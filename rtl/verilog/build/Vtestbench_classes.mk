# Verilated -*- Makefile -*-
# DESCRIPTION: Verilator output: Make include file with class lists
#
# This file lists generated Verilated files, for including in higher level makefiles.
# See Vtestbench.mk for the caller.

### Switches...
# C11 constructs required?  0/1 (always on now)
VM_C11 = 1
# Timing enabled?  0/1
VM_TIMING = 1
# Coverage output mode?  0/1 (from --coverage)
VM_COVERAGE = 0
# Parallel builds?  0/1 (from --output-split)
VM_PARALLEL_BUILDS = 1
# Tracing output mode?  0/1 (from --trace/--trace-fst)
VM_TRACE = 1
# Tracing output mode in VCD format?  0/1 (from --trace)
VM_TRACE_VCD = 0
# Tracing output mode in FST format?  0/1 (from --trace-fst)
VM_TRACE_FST = 1

### Object file lists...
# Generated module classes, fast-path, compile with highest optimization
VM_CLASSES_FAST += \
	Vtestbench \
	Vtestbench___024root__DepSet_hfc24d085__0 \
	Vtestbench___024root__DepSet_hed41eec4__0 \
	Vtestbench___024root__DepSet_hed41eec4__1 \
	Vtestbench___024root__DepSet_hed41eec4__2 \
	Vtestbench___024root__DepSet_hed41eec4__3 \
	Vtestbench___024root__DepSet_hed41eec4__4 \
	Vtestbench___024root__DepSet_hed41eec4__5 \
	Vtestbench__main \

# Generated module classes, non-fast-path, compile with low/medium optimization
VM_CLASSES_SLOW += \
	Vtestbench__ConstPool_0 \
	Vtestbench__ConstPool_1 \
	Vtestbench___024root__Slow \
	Vtestbench___024root__DepSet_hfc24d085__0__Slow \
	Vtestbench___024root__DepSet_hed41eec4__0__Slow \
	Vtestbench___024root__DepSet_hed41eec4__1__Slow \
	Vtestbench___024root__DepSet_hed41eec4__2__Slow \

# Generated support classes, fast-path, compile with highest optimization
VM_SUPPORT_FAST += \
	Vtestbench__Trace__0 \
	Vtestbench__Trace__1 \
	Vtestbench__Trace__2 \
	Vtestbench__Trace__3 \
	Vtestbench__Trace__4 \
	Vtestbench__Trace__5 \
	Vtestbench__Trace__6 \

# Generated support classes, non-fast-path, compile with low/medium optimization
VM_SUPPORT_SLOW += \
	Vtestbench__Syms \
	Vtestbench__Trace__0__Slow \
	Vtestbench__TraceDecls__0__Slow \
	Vtestbench__Trace__1__Slow \
	Vtestbench__Trace__2__Slow \
	Vtestbench__Trace__3__Slow \
	Vtestbench__Trace__4__Slow \
	Vtestbench__Trace__5__Slow \
	Vtestbench__Trace__6__Slow \
	Vtestbench__Trace__7__Slow \

# Global classes, need linked once per executable, fast-path, compile with highest optimization
VM_GLOBAL_FAST += \
	verilated \
	verilated_fst_c \
	verilated_timing \
	verilated_threads \

# Global classes, need linked once per executable, non-fast-path, compile with low/medium optimization
VM_GLOBAL_SLOW += \


# Verilated -*- Makefile -*-
