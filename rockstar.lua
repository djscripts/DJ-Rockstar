ESX = exports['es_extended']:getSharedObject()

print("^2[Rockstar Editor] ^0Hecho por DaniJim#0001 <3")

RegisterCommand( Config.Command , function(source, args)
    if args[1] == Config.Record then 
        StartRecording(1)
        print("^2[Rockstar Editor] ^0Grabación iniciada")
    elseif args[1] == Config.Save then 
        if(IsRecording()) then 
            StopRecordingAndSaveClip() 
            print("^2[Rockstar Editor] ^0Grabación guardada") 
        else 
            print(Config.NoRecord) 
        end
    elseif args[1] == Config.Delete then
        if(IsRecording()) then 
            StopRecordingAndDiscardClip() 
            print("^2[Rockstar Editor] ^0Grabación descartada") 
        else 
            print(Config.NoRecord) 
        end
    elseif args[1] == Config.Info then
        ESX.ShowNotification(Config.MessageInfo)
        print(Config.MessageInfo)
    else
        print(Config.Aviso)
    end
  end)