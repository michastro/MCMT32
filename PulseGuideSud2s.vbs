dim x
Set x = CreateObject("MCMT32_Ascom.Telescope")
x.Connected=True
x.PulseGuide 1,2000
