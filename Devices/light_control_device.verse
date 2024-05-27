
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

# See https://dev.epicgames.com/documentation/en-us/uefn/create-your-own-device-in-verse for how to create a verse device.

# A Verse-authored creative device that can be placed in a level
Light_Control_Device := class(creative_device):

    @editable
    Button:button_device=button_device{}

    @editable
    Lights: []customizable_light_device = array{}
    # Runs when the device is started in a running game
    OnBegin<override>()<suspends>:void=
        Button.InteractedWithEvent.Subscribe(OnButtonClick)


    OnButtonClick(Agent:agent):void=
        for (Light:Lights):
            Light.Toggle()