#include "pch.h"
#include "defaults.h"
#include "hellen_meta.h"

Gpio getCommsLedPin() {
	return Gpio::MM100_LED3_BLUE;
}

Gpio getRunningLedPin() {
	return Gpio::Unassigned;
}

Gpio getWarningLedPin() {
	return Gpio::Unassigned;
}

void setBoardDefaultConfiguration() {
    setHellenVbatt();
    setHellenSdCardSpi1();
   	setHellenCan();

   	setDefaultHellenAtPullUps();
}
