-ifndef(_models_types_included).
-define(_models_types_included, yeah).

%% struct message

-record(message, {url :: string() | binary(),
                  payload :: string() | binary()}).

-endif.
