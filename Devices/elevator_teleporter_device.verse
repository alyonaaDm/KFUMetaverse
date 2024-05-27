
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

elevator_teleporter_device := class(creative_device):
    @editable
    Button:button_device=button_device{}
    @editable
    Teleporter:teleporter_device=teleporter_device{}

    # Runs when the device is started in a running game
    OnBegin<override>()<suspends>:void=
        Button.InteractedWithEvent.Subscribe(OnButtonClick)


    OnButtonClick(Agent:agent):void=
        Teleporter.Teleport(Agent)