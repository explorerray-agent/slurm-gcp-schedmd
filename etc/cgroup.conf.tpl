# cgroup.conf
# https://slurm.schedmd.com/cgroup.conf.html

# Ubuntu 24.04 boots the unified hierarchy, so ask for the v2 plugin by name
# rather than leaving CgroupPlugin at its "autodetect" default. Autodetect would
# silently fall back to cgroup/v1 if the hierarchy were ever changed underneath
# us; naming the plugin makes that a startup failure instead.
CgroupPlugin=cgroup/v2

ConstrainCores=yes
ConstrainRAMSpace=yes
ConstrainSwapSpace=no

# Under cgroup/v2 this is enforced with the eBPF device controller, which needs
# linux/bpf.h present at build time (see auxdir/x_ac_bpf.m4).
ConstrainDevices=yes

# CgroupAutomount is deliberately absent: the man page states it is ignored
# under cgroup/v2, where systemd owns the mount. CgroupMountpoint is likewise
# omitted, being documented as development and testing only.
