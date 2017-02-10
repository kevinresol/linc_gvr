package gvr;

@:include('linc_gvr.h')
extern class CApi {

	@:native('linc::gvr::create')
	static function create():Context;

} //CApi













