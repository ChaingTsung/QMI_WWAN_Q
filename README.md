# QMI_WWAN_Q
 Quectel qmi wwan 

# Passes on Ubuntu 24.04 with kernel 6.8.52
```
yoki@ubuntu:/tmp/Quectel_Linux_Android_QMI_WWAN_Driver_V1.2.9$ make
make ARCH=x86_64 CROSS_COMPILE= -C /lib/modules/6.8.0-52-generic/build M=/tmp/Quectel_Linux_Android_QMI_WWAN_Driver_V1.2.9 modules
make[1]: Entering directory '/usr/src/linux-headers-6.8.0-52-generic'
warning: the compiler differs from the one used to build the kernel
  The kernel was built by: x86_64-linux-gnu-gcc-13 (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
  You are using:           gcc-13 (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0
  CC [M]  /tmp/Quectel_Linux_Android_QMI_WWAN_Driver_V1.2.9/qmi_wwan_q.o
/tmp/Quectel_Linux_Android_QMI_WWAN_Driver_V1.2.9/qmi_wwan_q.c:1476:5: warning: no previous prototype for ‘qma_setting_store’ [-Wmissing-prototypes]
 1476 | int qma_setting_store(struct device *dev, QMAP_SETTING *qmap_settings, size_t size) {
      |     ^~~~~~~~~~~~~~~~~
  MODPOST /tmp/Quectel_Linux_Android_QMI_WWAN_Driver_V1.2.9/Module.symvers
  CC [M]  /tmp/Quectel_Linux_Android_QMI_WWAN_Driver_V1.2.9/qmi_wwan_q.mod.o
  LD [M]  /tmp/Quectel_Linux_Android_QMI_WWAN_Driver_V1.2.9/qmi_wwan_q.ko
  BTF [M] /tmp/Quectel_Linux_Android_QMI_WWAN_Driver_V1.2.9/qmi_wwan_q.ko
Skipping BTF generation for /tmp/Quectel_Linux_Android_QMI_WWAN_Driver_V1.2.9/qmi_wwan_q.ko due to unavailability of vmlinux
make[1]: Leaving directory '/usr/src/linux-headers-6.8.0-52-generic'
yoki@ubuntu:/tmp/Quectel_Linux_Android_QMI_WWAN_Driver_V1.2.9$ ls
License.txt  Makefile       Module.symvers  qmi_wwan_q.ko   qmi_wwan_q.mod.c  qmi_wwan_q.o     rmnet_nss.c
log          modules.order  qmi_wwan_q.c    qmi_wwan_q.mod  qmi_wwan_q.mod.o  ReleaseNote.txt
```