package gvr.types;

@:include('linc_gvr.h')
@:native('gvr::ClockTimePoint')
extern class ClockTimePoint {
	var monotonic_system_time_nanos:cpp.Int64; 
} //ClockTimePoint
