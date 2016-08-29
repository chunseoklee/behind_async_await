behind_async_await
====

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
                    Console.WriteLine("B : " + ptr.ToString());
                    var task = Task.Delay(1000).GetAwaiter();
                    builder.AwaitUnsafeOnCompleted(ref task, ref _this);

                    ptr++;
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
