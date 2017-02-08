import std.stdio;
void  swap(ref int a,ref int b)
in{
	writeln("in block");
}
out{
	writeln("out block");
}
body{
	scope(success){
		writeln("success");
	}
	scope(exit){
	}
	scope(failure){
	}
	int c=a;
	a=b;
	b=c;
}
struct Person {
	static int id=1;
	static this(){
		writeln("age");
	}
	static ~this(){
		writeln("xigoufangfa");
	}
	void say(){
		writeln("line:",__LINE__);
		writeln("file:",__FILE__);
		writeln("function:",__FUNCTION__);
		writeln("module:",__MODULE__);
		writeln("version:",__VERSION__);
		writeln("vendor:",__VENDOR__);
		writeln("timestamp:",__TIMESTAMP__);

	}
}
void main()
{
	Person p=Person();
	p.say();
	int a=1;
	int b=2;
	swap(a,b);
	writeln(a);
	writeln(b);
	return ;
}
