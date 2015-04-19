
function get-applicationEvents
{
    param ( $entryType );

    get-eventlog -LogName Application -newest 20 -EntryType $entryType
}

root {

    folder Events {
        script Errors {
            get-applicationEvents -EntryType error;
        }

        script Warnings {
            get-applicationEvents -EntryType Warning;
        }

        script Infos {
            get-applicationEvents -EntryType Information;
        }
    }
}

Export-ModuleMember -Function ''