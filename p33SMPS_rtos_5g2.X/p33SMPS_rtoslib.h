/* Microchip Technology Inc. and its subsidiaries.  You may use this software 
 * and any derivatives exclusively with Microchip products. 
 * 
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES, WHETHER 
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED 
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A 
 * PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION 
 * WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION. 
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS 
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE 
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS 
 * IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF 
 * ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE 
 * TERMS. 
 */

/* 
 * File:   p33SMPS_rtoslib.h
 * Author: M91406
 * Comments: This common RTOS header providing all RTOS component declarations
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef __P33SMPS_RTOS_V5G2_H__
#define	__P33SMPS_RTOS_V5G2_H__

#include <xc.h> // include processor files - each processor file is guarded.  
#include <stdint.h> // include standard integer number data types 
#include <stdbool.h> // include standard boolean data types (true/false)

#include "rtoslib/fdrv_FaultHandler.h" // Fault Handler driver 
#include "rtoslib/fdrv_FaultObjects.h" // Internal RTOS Fault Objects driver 
#include "rtoslib/fdrv_TrapHandler.h" // CPU Trap handler driver 

#include "rtoslib/os_Globals.h" // RTOS global declarations
#include "rtoslib/os_Initialize.h" // RTOS initialization declarations
#include "rtoslib/os_Scheduler.h"  // RTOS task scheduler
#include "rtoslib/os_TaskManager.h" // RTOS task manager



#endif	/* __P33SMPS_RTOS_V5G2_H__ */

