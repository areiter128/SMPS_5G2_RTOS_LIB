/***************************************************************************************************
 * � 2006 Microchip Technology Inc.
 *
 * FileName:        fdrv_TrapHandler.c
 * Dependencies:    Header file traps.h
 * Processor:       dsPIC33FJxxx/dsPIC33EPxxx/dsPIC33CXxxx
 * Compiler:        MPLAB� X16 v1.36 or higher
 *
 * SOFTWARE LICENSE AGREEMENT:
 * Microchip Technology Incorporated ("Microchip") retains all ownership and intellectual property 
 * rights in the code accompanying this message and in all derivatives hereto.  You may use this 
 * code, and any derivatives created by any person or entity by or on your behalf, exclusively with 
 * Microchip's proprietary products.  Your acceptance and/or use of this code constitutes agreement 
 * to the terms and conditions of this notice.
 *
 * CODE ACCOMPANYING THIS MESSAGE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES, WHETHER EXPRESS, 
 * IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF NON-INFRINGEMENT, 
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS CODE, ITS INTERACTION WITH 
 * MICROCHIP'S PRODUCTS, COMBINATION WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION. 
 *
 * YOU ACKNOWLEDGE AND AGREE THAT, IN NO EVENT, SHALL MICROCHIP BE LIABLE, WHETHER IN CONTRACT, 
 * WARRANTY, TORT (INCLUDING NEGLIGENCE OR BREACH OF STATUTORY DUTY), STRICT LIABILITY, INDEMNITY, 
 * CONTRIBUTION, OR OTHERWISE, FOR ANY INDIRECT, SPECIAL, PUNITIVE, EXEMPLARY, INCIDENTAL OR 
 * CONSEQUENTIAL LOSS, DAMAGE, FOR COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE CODE, 
 * HOWSOEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
 * FORESEEABLE.  TO THE FULLEST EXTENT ALLOWABLE BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS 
 * IN ANY WAY RELATED TO THIS CODE, SHALL NOT EXCEED THE PRICE YOU PAID DIRECTLY TO MICROCHIP 
 * SPECIFICALLY TO HAVE THIS CODE DEVELOPED.
 *
 * You agree that you are solely responsible for testing the code and determining its suitability.  
 * Microchip has no obligation to modify, test, certify, or support the code.
 *
 * REVISION HISTORY:
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *	Date		Autor				Company	Version	Comments
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *
 * 03/09/2006	D. Settu			MCHP	1.0		First Release
 * 10/07/2009	Andreas Reiter		HPC		1.1		added a header file and a default trap handler
 *													routine for better integration
 * 07/19/2016	Andreas Reiter		MCHP	1.2		Added data structure for trap monitoring
 * 05/17/2019   M91406              MCHP    1.3     Added support for dsPIC33C and removed support for C30 C Complier
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *
 * ADDITIONAL NOTES:
 *
 * 1. This file contains trap service routines (handlers) for hardware exceptions generated by 
 *	 the dsPIC33F device.
 *
 * 2. All trap service routines in this file simply ensure that device continuously executes code 
 *	 within the trap service routine. Users may modify the basic framework provided here to suit 
 *	 to the needs of their application.
 *
 ***************************************************************************************************/

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#include "fdrv_TrapHandler.h"
#include "fdrv_FaultHandler.h"

// data structure used as buffer for trap monitoring
volatile __attribute__((__persistent__)) TRAP_LOGGER_t traplog; 


/*!init_SoftTraps
 * *************************************************************************************************
 * Summary:
 * Configures the software-configurable traps
 * 
 * Description:
 * This routine sets the DSP-specific traps for overflow-events of accumulator A and B. 
 * 
 * ************************************************************************************************/
volatile uint16_t init_SoftTraps(
                bool accumulator_a_overflow_trap_enable, 
                bool accumulator_b_overflow_trap_enable, 
                bool accumulator_catastrophic_overflow_trap_enable)
{
    _OVATE = accumulator_a_overflow_trap_enable; // Enable Accumulator A Overflow Trap Enable bit
    _OVBTE = accumulator_b_overflow_trap_enable; // Enable Accumulator B Overflow Trap Enable bit
    _COVTE = accumulator_catastrophic_overflow_trap_enable; // Enable Catastrophic Overflow Trap Enable bit
    
    return(1);
}


/*!DefaultTrapHandler
 * *************************************************************************************************
 * Summary:
 * Centralized trap handler routine
 * 
 * Description:
 * This routine is used as centralized trap handler for all traps. Each trap is identified 
 * and logged by a unique trap ID and the status bits of traps and interrupt vectors are 
 * captured
 * 
 * Users may modify the basic framework provided here to suit to the needs of their application.
 *
 * ************************************************************************************************/
void DefaultTrapHandler(TRAP_ID_e trap_id) {

    // Capture Trap logger values
    traplog.trap_id = trap_id; // Capture Trap ID
    traplog.trap_count++; // Capture occurrence 

    // Capture recent status of interrupt, reset control and trap flag bits
    CaptureCPUInterruptStatus();
 
    // -------------------------------------------------
    #ifdef __DEBUG
    while(1) {
        Nop();  // Use these NOPs to place breakpoint
        Nop();
        Nop();
    }
    #endif
    // -------------------------------------------------
    
    return;
}


// =================================================================================================
//
// PRIMARY EXCEPTION VECTOR HANDLERS
//
// =================================================================================================
//
// These routines are used if INTCON2bits.ALTIVT = 1. All trap service routines in this file 
// simply ensure that device continuously executes code within the trap service routine. 
//
// Users may modify the basic framework provided here to suit to the needs of their application.
//
// =================================================================================================

void __attribute__((interrupt, no_auto_psv)) _ReservedTrap5(void) {
    DefaultTrapHandler(TRAP_RESERVED_TRAP_5_ERROR); // Call default trap handler
}

void __attribute__((interrupt, no_auto_psv)) _ReservedTrap7(void) {
    DefaultTrapHandler(TRAP_RESERVED_TRAP_7_ERROR); // Call default trap handler
}

// =================================================================================================
// Hard Trap Error is captured
// =================================================================================================

void __attribute__((interrupt, no_auto_psv)) _HardTrapError(void) {
    DefaultTrapHandler(TRAP_HARD_TRAP_ERROR); // Call default trap handler
}

// =================================================================================================
// Soft Trap Error is captured
// =================================================================================================

void __attribute__((interrupt, no_auto_psv)) _SoftTrapError(void) {
    DefaultTrapHandler(TRAP_SOFT_TRAP_ERROR);
}

// =================================================================================================
// Oscillator Failure Trap is captured, when the system clock becomes unstable
// =================================================================================================

void __attribute__((interrupt, no_auto_psv)) _OscillatorFail(void) {
    DefaultTrapHandler(TRAP_OSCILLATOR_FAIL);
}

// =================================================================================================
// Address Error Trap is captured, when a routine tries to access unknown memory addresses
// in RAM or Flash via PSV.
// =================================================================================================

void __attribute__((interrupt, no_auto_psv)) _AddressError(void) {
    DefaultTrapHandler(TRAP_ADDRESS_ERROR);
}
// =================================================================================================
// Stack Error Trap is captured, when a stack address error occurred
// =================================================================================================

void __attribute__((interrupt, no_auto_psv)) _StackError(void) {
    DefaultTrapHandler(TRAP_STACK_ERROR);
}
// =================================================================================================
// Math Error Trap is captured, when a math operation cannot be solved (e.g. division by zero)
// =================================================================================================

void __attribute__((interrupt, no_auto_psv)) _MathError(void) {
    DefaultTrapHandler(TRAP_MATH_ERROR);
}

#if (TRAP_DMA_SUPPORT == 1)
#if defined (_DMACError)
// =================================================================================================
// DMA Error Trap is captured, when an access error of the dual ported RAM occurred
// =================================================================================================

void __attribute__((interrupt, no_auto_psv)) _DMACError(void) {
    DefaultTrapHandler(TRAP_DMA_ERROR);
}
#endif
#endif

// =================================================================================================
//
// ALTERNATE EXCEPTION VECTOR HANDLERS
//
// =================================================================================================
//
// These routines are used if INTCON2bits.ALTIVT = 1. All trap service routines in this file 
// simply ensure that device continuously executes code within the trap service routine. 
//
// Users may modify the basic framework provided here to suit to the needs of their application.
//
// =================================================================================================
#if (__XC16_VERSION < 1030)

void __attribute__((interrupt, no_auto_psv)) _AltHardTrapError(void) {
    DefaultTrapHandler(TRAP_ALT_HARD_TRAP_ERROR); // Call default trap handler
}

void __attribute__((interrupt, no_auto_psv)) _AltSoftTrapError(void) {
    DefaultTrapHandler(TRAP_ALT_SOFT_TRAP_ERROR);
}

void __attribute__((interrupt, no_auto_psv)) _AltOscillatorFail(void) {
    DefaultTrapHandler(TRAP_ALT_OSCILLATOR_FAIL);
}

void __attribute__((interrupt, no_auto_psv)) _AltAddressError(void) {
    DefaultTrapHandler(TRAP_ALT_ADDRESS_ERROR);
}

void __attribute__((interrupt, no_auto_psv)) _AltStackError(void) {
    DefaultTrapHandler(TRAP_ALT_STACK_ERROR);
}

void __attribute__((interrupt, no_auto_psv)) _AltMathError(void) {
    DefaultTrapHandler(TRAP_ALT_MATH_ERROR);
}

#if (TRAP_DMA_SUPPORT == 1)

void __attribute__((interrupt, no_auto_psv)) _AltDMACError(void) {
    DefaultTrapHandler(TRAP_ALT_DMA_ERROR);
}
#endif

#endif


// EOF
