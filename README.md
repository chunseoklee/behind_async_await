behind_async_await
====
C#은 stackless한 코루틴을 지원합니다. 어케 가능한지 아라보자

```cs
static async void Foo()
{
    Console.WriteLine("A");

    await Task.Delay(1000);

    Console.WriteLine("B");

    await Task.Delay(1000);

    Console.WriteLine("C");
}
```

아래의 코드는 `Foo` 함수를 [디컴파일](https://github.com/pjc0247/behind_async_await/blob/master/decompiled.il) 한 결과물을 기반으로 다시 작성되었습니다. 대충 필요한것만 남기고 생략함
```cs
class MyAsync : System.Runtime.CompilerServices.IAsyncStateMachine
{
    internal AsyncVoidMethodBuilder builder { get; set; }
    internal int ptr { get; set; }

    public void MoveNext()
    {
        var _this = this;
        
        switch(ptr)
        {
            case 0:
                {
                    Console.WriteLine("A : " + ptr.ToString());
                    var task = Task.Delay(1000).GetAwaiter();
                    builder.AwaitUnsafeOnCompleted(ref task, ref _this);

                    ptr++;
                    break;
                }

            case 1:
                {
                    Console.WriteLine("B : " + ptr.ToString());
                    var task = Task.Delay(1000).GetAwaiter();
                    builder.AwaitUnsafeOnCompleted(ref task, ref _this);

                    ptr++;
                    break;
                }

            case 2:
                {
                    Console.WriteLine("C : " + ptr.ToString());
                    break;
                }
        }
    }

    public void SetStateMachine(IAsyncStateMachine stateMachine)
    {
    }
}

var async = new MyAsync();
var builder = AsyncVoidMethodBuilder.Create();
async.ptr = 0;
async.builder = builder;
builder.Start(ref async);
```

* __async__가 붙은 메소드는 `IAsyncStateMachine`를 구현하는 클래스로 변환됩니다.
* `IAsyncStateMachine`는 __MoveNext__ 메소드를 정의합니다.
* __MoveNext__는 계속 실행됩니다. __MoveNext__ 내부의 상태(실행 포인터) 관리는 클래스 내부의 구현체에서 직접 해야합니다.
* `AwaitUnsafeOnCompleted`는 어떠한 __Task__가 완료되면 다시 __MoveNext__를 호출하도록 예약하는 역할을 합니다.
* 이 작업이 반복되면서 `await/async`가 동작하게 됩니다.

결론
----
* stackless 코루틴은 stackful 코루틴처럼 사기군같은 컨텍스트 스위칭 없이 자체 상태머신을 이용한 멀쩡해보이는 방법으로 구현한다.
* 컴파일러가 자동으로 코드를 길게 풀어준다.
