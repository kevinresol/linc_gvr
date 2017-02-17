//hxcpp include should be first
#include <hxcpp.h>
#include <vector>
#include "./linc_gvr.h"

namespace linc {

    namespace gvr {
        
        gvr_swap_chain* swap_chain_create(gvr_context* gvr, int size) {
            std::vector<const gvr_buffer_spec*> specs;
            gvr_buffer_spec *spec = gvr_buffer_spec_create(gvr);
            specs.push_back(spec);
            gvr_swap_chain* c = gvr_swap_chain_create(gvr, specs.data(), (int32_t) size);
            return c;
        }

    } //gvr namespace

} //linc
