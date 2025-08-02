# Project – Traffic Light Controller

## Objective

Design a digital controller to control traffic at an intersection of a busy main street (North-South) and an occasionally used side street (East-West).

- North South must be Green for a minimum of 25 seconds and will remain Green until traffic is present on East-West

- East West will remain Green for a maximum of 25 seconds

- Yellow lights on both streets must be for 4 seconds

This project includes a presentation detailing the thought process and application of this implementation of a traffic light controller. 

## Test Cases

**1. Test A:** No traffic on either NS or EW

**2. Test B:** Steady traffic on both NS and EW

**3. Test C:** Steady traffic on NS, not EW

**4. Test D:** Steady traffic on EW, not NS

**5. Test E:** Intermittent traffic on NS, none on EW

**6. Test F:** Intermittent traffic on EW, none on NS

**7. Test G:** Intermittent traffic on both NS and EW, e.g. 1 car every 20 or 30 seconds

**8. Test H:** Constant ongoing traffic detected on both NS and EW

## Source Files

- **Traffic Control Module** - Traffic.v
- **North-South Counter** - nsCounter.v
- **East-West Counter** - ewCounter.v
- **Yellow Counter** - yellowCounter.v
- **Traffic Control Test Bench A** - Traffic_test_A.v- **Traffic Control Test Bench B** - Traffic_test_B.v- **Traffic Control Test Bench C** - Traffic_test_C.v	- **Traffic Control Test Bench D** - Traffic_test_D.v
- **Traffic Control Test Bench E** - Traffic_test_E.v
- **Traffic Control Test Bench F** - Traffic_test_F.v- **Traffic Control Test Bench G** - Traffic_test_G.v- **Traffic Control Test Bench H** - Traffic_test_H.v
