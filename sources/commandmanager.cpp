#include "includes/commandmanager.h"

CommandManager::CommandManager()
{
    Command *helpCmd  = new HelpCommand;
    Command *startCmd = new StartCommand;
    Command *stopCmd  = new StopCommand;

    m_commands.insert("start", startCmd);
    m_commands.insert("stop",  stopCmd);
    m_commands.insert("help",  helpCmd);
}

Command* CommandManager::getCommand(QString label) const
{
    for(auto it = m_commands.begin(); it!= m_commands.end(); it++)
    {
        if(label == it.key())
        {
            return *it;
        }
    }
    QString exception = "Command not found";
    throw exception;
}

QList<Command*> CommandManager::getCommands() const
{
    QList<Command*> cmds;
    for(auto it = m_commands.begin(); it!= m_commands.end(); it++)
    {
        cmds.append(*it);
    }
    return cmds;
}

CommandManager::~CommandManager()
{
    for(auto it = m_commands.begin(); it!= m_commands.end(); it++)
    {
        delete *it;
    }
    m_commands.clear();
}
