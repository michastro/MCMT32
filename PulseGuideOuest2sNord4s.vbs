dim x
Set x = CreateObject("MCMT32_Ascom.Telescope")
x.Connected=True
x.PulseGuide 3,2000
x.PulseGuide 0,4000

