#!/bin/sh
case $1/$2 in
    pre/*)
        rmmod ehci-pci
        xhci_hcd
        ;;
    post/*)
        modprobe ehci-pci
        modprobe xhci_hcd
        ;;
esac
