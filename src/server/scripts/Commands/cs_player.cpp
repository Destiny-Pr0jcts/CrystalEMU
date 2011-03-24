/* ScriptData
Name: Player_Commandscript
%Complete: 10
Category: Commandscripts
EndScriptData */

#include "ScriptPCH.h"
#include "Chat.h"

// **** This script is designed as an example for others to build on ****
// **** Please modify whatever you'd like to as this script is only for developement ****

// **** Script Info ****
// This script's primary purpose is to show just how much you can really do with commandscripts

class player_commandscript : public CommandScript
{
    public:
        player_commandscript() : CommandScript("player_commandscript") { }



        ChatCommand* GetCommands() const
        {
			static ChatCommand playerCommandTable[] =
			{
				{ "fly",		SEC_ADMINISTRATOR, false,	&HandlePlayerFlyCommand,		"", NULL },
				{ NULL, 		0,				false,	NULL,								"", NULL }
			};
            static ChatCommand commandTable[] =
            {
                { "player",          SEC_ADMINISTRATOR, false,   &playerCommandTable,        "", NULL },
                { NULL,             0,                  false,  NULL,                            "", NULL }
            };
            return commandTable;
        }
		    static bool HandlePlayerFlyCommand(ChatHandler* handler, const char* args)
    {
        if (!*args)
            return false;

        Player *target =  handler->getSelectedPlayer();
        if (!target)
            target = handler->GetSession()->GetPlayer();

        WorldPacket data(12);
        if (strncmp(args, "on", 3) == 0)
            data.SetOpcode(SMSG_MOVE_SET_CAN_FLY);
        else if (strncmp(args, "off", 4) == 0)
            data.SetOpcode(SMSG_MOVE_UNSET_CAN_FLY);
        else
        {
            handler->SendSysMessage(LANG_USE_BOL);
            return false;
        }
        data.append(target->GetPackGUID());
        data << uint32(0);                                      // unknown
        target->SendMessageToSet(&data, true);
        handler->PSendSysMessage(LANG_COMMAND_FLYMODE_STATUS, handler->GetNameLink(target).c_str(), args);
        return true;
    }

};

void AddSC_player_commandscript()
{
    new player_commandscript();
}
