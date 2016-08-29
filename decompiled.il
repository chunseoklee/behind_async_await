.class nested private auto ansi sealed beforefieldinit '<Foo>d__0'
	extends [mscorlib]System.Object
	implements [mscorlib]System.Runtime.CompilerServices.IAsyncStateMachine
{
	.custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)
	// Fields
	.field public int32 '<>1__state'
	.field public valuetype [mscorlib]System.Runtime.CompilerServices.AsyncVoidMethodBuilder '<>t__builder'
	.field private valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter '<>u__1'

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x208e
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [mscorlib]System.Object::.ctor()
		IL_0006: nop
		IL_0007: ret
	} // end of method '<Foo>d__0'::.ctor

	.method private final hidebysig newslot virtual 
		instance void MoveNext () cil managed 
	{
		.override method instance void [mscorlib]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext()
		// Method begins at RVA 0x2098
		// Code size 321 (0x141)
		.maxstack 3
		.locals init (
			[0] int32,
			[1] valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter,
			[2] class TaskILTest.Program/'<Foo>d__0',
			[3] valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter,
			[4] class [mscorlib]System.Exception
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 TaskILTest.Program/'<Foo>d__0'::'<>1__state'
		IL_0006: stloc.0
		.try
		{
			IL_0007: ldloc.0
			IL_0008: brfalse.s IL_0012

			IL_000a: br.s IL_000c

			IL_000c: ldloc.0
			IL_000d: ldc.i4.1
			IL_000e: beq.s IL_0014

			IL_0010: br.s IL_0019

			IL_0012: br.s IL_0065

			IL_0014: br IL_00d9

			IL_0019: nop
			IL_001a: ldstr "A"
			IL_001f: call void [mscorlib]System.Console::WriteLine(string)
			IL_0024: nop
			IL_0025: ldc.i4 1000
			IL_002a: call class [mscorlib]System.Threading.Tasks.Task [mscorlib]System.Threading.Tasks.Task::Delay(int32)
			IL_002f: callvirt instance valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter [mscorlib]System.Threading.Tasks.Task::GetAwaiter()
			IL_0034: stloc.1
			IL_0035: ldloca.s 1
			IL_0037: call instance bool [mscorlib]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
			IL_003c: brtrue.s IL_0081

			IL_003e: ldarg.0
			IL_003f: ldc.i4.0
			IL_0040: dup
			IL_0041: stloc.0
			IL_0042: stfld int32 TaskILTest.Program/'<Foo>d__0'::'<>1__state'
			IL_0047: ldarg.0
			IL_0048: ldloc.1
			IL_0049: stfld valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter TaskILTest.Program/'<Foo>d__0'::'<>u__1'
			IL_004e: ldarg.0
			IL_004f: stloc.2
			IL_0050: ldarg.0
			IL_0051: ldflda valuetype [mscorlib]System.Runtime.CompilerServices.AsyncVoidMethodBuilder TaskILTest.Program/'<Foo>d__0'::'<>t__builder'
			IL_0056: ldloca.s 1
			IL_0058: ldloca.s 2
			IL_005a: call instance void [mscorlib]System.Runtime.CompilerServices.AsyncVoidMethodBuilder::AwaitUnsafeOnCompleted<valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter, class TaskILTest.Program/'<Foo>d__0'>(!!0&, !!1&)
			IL_005f: nop
			IL_0060: leave IL_0140

			IL_0065: ldarg.0
			IL_0066: ldfld valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter TaskILTest.Program/'<Foo>d__0'::'<>u__1'
			IL_006b: stloc.1
			IL_006c: ldarg.0
			IL_006d: ldflda valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter TaskILTest.Program/'<Foo>d__0'::'<>u__1'
			IL_0072: initobj [mscorlib]System.Runtime.CompilerServices.TaskAwaiter
			IL_0078: ldarg.0
			IL_0079: ldc.i4.m1
			IL_007a: dup
			IL_007b: stloc.0
			IL_007c: stfld int32 TaskILTest.Program/'<Foo>d__0'::'<>1__state'

			IL_0081: ldloca.s 1
			IL_0083: call instance void [mscorlib]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
			IL_0088: nop
			IL_0089: ldloca.s 1
			IL_008b: initobj [mscorlib]System.Runtime.CompilerServices.TaskAwaiter
			IL_0091: ldstr "B"
			IL_0096: call void [mscorlib]System.Console::WriteLine(string)
			IL_009b: nop
			IL_009c: ldc.i4 1000
			IL_00a1: call class [mscorlib]System.Threading.Tasks.Task [mscorlib]System.Threading.Tasks.Task::Delay(int32)
			IL_00a6: callvirt instance valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter [mscorlib]System.Threading.Tasks.Task::GetAwaiter()
			IL_00ab: stloc.3
			IL_00ac: ldloca.s 3
			IL_00ae: call instance bool [mscorlib]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
			IL_00b3: brtrue.s IL_00f5

			IL_00b5: ldarg.0
			IL_00b6: ldc.i4.1
			IL_00b7: dup
			IL_00b8: stloc.0
			IL_00b9: stfld int32 TaskILTest.Program/'<Foo>d__0'::'<>1__state'
			IL_00be: ldarg.0
			IL_00bf: ldloc.3
			IL_00c0: stfld valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter TaskILTest.Program/'<Foo>d__0'::'<>u__1'
			IL_00c5: ldarg.0
			IL_00c6: stloc.2
			IL_00c7: ldarg.0
			IL_00c8: ldflda valuetype [mscorlib]System.Runtime.CompilerServices.AsyncVoidMethodBuilder TaskILTest.Program/'<Foo>d__0'::'<>t__builder'
			IL_00cd: ldloca.s 3
			IL_00cf: ldloca.s 2
			IL_00d1: call instance void [mscorlib]System.Runtime.CompilerServices.AsyncVoidMethodBuilder::AwaitUnsafeOnCompleted<valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter, class TaskILTest.Program/'<Foo>d__0'>(!!0&, !!1&)
			IL_00d6: nop
			IL_00d7: leave.s IL_0140

			IL_00d9: ldarg.0
			IL_00da: ldfld valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter TaskILTest.Program/'<Foo>d__0'::'<>u__1'
			IL_00df: stloc.3
			IL_00e0: ldarg.0
			IL_00e1: ldflda valuetype [mscorlib]System.Runtime.CompilerServices.TaskAwaiter TaskILTest.Program/'<Foo>d__0'::'<>u__1'
			IL_00e6: initobj [mscorlib]System.Runtime.CompilerServices.TaskAwaiter
			IL_00ec: ldarg.0
			IL_00ed: ldc.i4.m1
			IL_00ee: dup
			IL_00ef: stloc.0
			IL_00f0: stfld int32 TaskILTest.Program/'<Foo>d__0'::'<>1__state'

			IL_00f5: ldloca.s 3
			IL_00f7: call instance void [mscorlib]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
			IL_00fc: nop
			IL_00fd: ldloca.s 3
			IL_00ff: initobj [mscorlib]System.Runtime.CompilerServices.TaskAwaiter
			IL_0105: ldstr "C"
			IL_010a: call void [mscorlib]System.Console::WriteLine(string)
			IL_010f: nop
			IL_0110: leave.s IL_012c
		} // end .try
		catch [mscorlib]System.Exception
		{
			IL_0112: stloc.s 4
			IL_0114: ldarg.0
			IL_0115: ldc.i4.s -2
			IL_0117: stfld int32 TaskILTest.Program/'<Foo>d__0'::'<>1__state'
			IL_011c: ldarg.0
			IL_011d: ldflda valuetype [mscorlib]System.Runtime.CompilerServices.AsyncVoidMethodBuilder TaskILTest.Program/'<Foo>d__0'::'<>t__builder'
			IL_0122: ldloc.s 4
			IL_0124: call instance void [mscorlib]System.Runtime.CompilerServices.AsyncVoidMethodBuilder::SetException(class [mscorlib]System.Exception)
			IL_0129: nop
			IL_012a: leave.s IL_0140
		} // end handler

		IL_012c: ldarg.0
		IL_012d: ldc.i4.s -2
		IL_012f: stfld int32 TaskILTest.Program/'<Foo>d__0'::'<>1__state'
		IL_0134: ldarg.0
		IL_0135: ldflda valuetype [mscorlib]System.Runtime.CompilerServices.AsyncVoidMethodBuilder TaskILTest.Program/'<Foo>d__0'::'<>t__builder'
		IL_013a: call instance void [mscorlib]System.Runtime.CompilerServices.AsyncVoidMethodBuilder::SetResult()
		IL_013f: nop

		IL_0140: ret
	} // end of method '<Foo>d__0'::MoveNext

	.method private final hidebysig newslot virtual 
		instance void SetStateMachine (
			class [mscorlib]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine
		) cil managed 
	{
		.custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
			01 00 00 00
		)
		.override method instance void [mscorlib]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine(class [mscorlib]System.Runtime.CompilerServices.IAsyncStateMachine)
		// Method begins at RVA 0x2204
		// Code size 1 (0x1)
		.maxstack 8

		IL_0000: ret
	} // end of method '<Foo>d__0'::SetStateMachine

} // end of class <Foo>d__0
