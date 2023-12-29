BOARDCPPSRC =  $(BOARD_DIR)/board_configuration.cpp

BOARDINC += $(BOARD_DIR)/generated/controllers/generated

include $(PROJECT_DIR)/config/boards/hellen/hellen-common100.mk

DDEFS += -DFIRMWARE_ID=\"community-hellen-100\"
SHORT_BOARD_NAME=community-hellen-100

# reduce memory usage monitoring
DDEFS += -DRAM_UNUSED_SIZE=100

# assign critical LED to a non-existent pin if you do not have it on your board
# good old PD14 is still the default value
# DDEFS += -DLED_CRITICAL_ERROR_BRAIN_PIN=Gpio::I15
