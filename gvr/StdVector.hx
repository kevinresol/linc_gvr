package gvr;

// @:include('<vector>')
@:native('std::vector')
extern class StdVector<T> implements ArrayAccess<T> {
	function new();
	
	@:native('push_back')
	function push(v:T):Void;
}
