require 'piece_pipe'
require 'pry'

module SpecHelpers
  def ezpipe(single_step, inputz)
    PiecePipe::Pipeline.new.
      input(inputz).
      step(single_step)
  end
end

RSpec.configure do |config|
  config.mock_with :mocha
  config.include SpecHelpers
end

class NilClass
  def stubs(*args)
    raise "Tried to stub a method on NilClass with arguments: #{args.inspect}.  Are you using a non-existant mock instance?"
  end

  def expects(*args)
    raise "Tried to expect a method on NilClass with arguments: #{args.inspect}.  Are you using a non-existant mock instance?"
  end

  def to_regexp
    # match empty string or &nbsp;
    /^$|&nbsp;/
  end
end

def clever_girl
  pending <<-EOVR
                           __      ______
                         ,^.__.>--"~~'_.--~_)~^.
                        _L^~   ~    (~ _.-~ \\. |\\
   CLEVER GIRL....   ,-~    __    __,^"/\\_A_/ /' \\
                   /    ,-"  "~~" _) \\  ~_,^   /\\
                  //    /  ,-~\\ x~"  \\._"-~     ~ _Y
                  Y'   Y. (__.//     /  " , "\\_r ' ]
                  J-._l_>---r{      ~    \\__/ \\ _/
                 (_ (   (~  (  ~"---   _.-~ `\\ / \\ !
                  (_"~--^----^--------"  _.-c Y  /Y'
                   l~--v---.,____.--"  /  !_/ |
                    \\.__!.__./~-.      _/  /  \\ !
                     `x.\\_____\\_,>---"~___Y\\__/Y'
                         ~     ~(~~()"~___)/ /\\|
                                (~~   ~~__)  \\_t
                                (~~   ~~__)\\_/ |
                                (~~   ~~__)\\_/ |
                                { ~~   ~~   }/ \\
  EOVR
end

def pending_tiger_no_dragon
pending <<-EOT

                        ,''',
                      .' ., .',                                  ../'''',
                     .'. %%, %.',                            .,/' .,%   :
                    .'.% %%%,`%%%'.    .....,,,,,,.....   .,%%% .,%%'. .'
                    : %%% %%%%%%',:%%>>%>' .,>>%>>%>%>>%%>,.   `%%%',% :
                    : %%%%%%%'.,>>>%'   .,%>%>%'.,>%>%' . `%>>>,. `%%%:'
                    ` %%%%'.,>>%'  .,%>>%>%' .,%>%>%' .>>%,. `%%>>,. `%
                     `%'.,>>>%'.,%%%%%%%' .,%%>%%>%' >>%%>%>>%.`%% %% `,
                     ,`%% %%>>>%%%>>%%>%%>>%>>%>%%%  %%>%%>%%>>%>%%%' % %,
                   ,%>%'.>>%>%'%>>%%>%%%%>%'                 `%>%>>%%.`%>>%.
                 ,%%>' .>%>%'.%>%>>%%%>>%' ,%%>>%%>%>>%>>%>%%,.`%%%>%%. `%>%.
                ` ,%' .>%%%'.%>%>>%' .,%%%%%%%%'          `%%%%%%.`%%>%% .%%>
                .%>% .%%>' :%>>%%'.,%%%%%%%%%'.%%%%%' `%%%%.`%%%%%.%%%%> %%>%.
               ,%>%' >>%%  >%' `%%%%'     `%%%%%%%'.,>,. `%%%%'     `%%%>>%%>%
             .%%>%' .%%>'  %>>%, %% oO ~ Oo %%%>>'.>>>>>>. `% oO ~ Oo'.%%%'%>%,
             %>'%> .%>%>%  %%>%%%'  `OoooO'.%%>>'.>>>%>>%>>.`%`OoooO'.%%>% '%>%
             %',%' %>%>%'  %>%>%>% .%,>,>,   `>'.>>%>%%>>>%>.`%,>,>' %%%%> .>%>,
             ` %>% `%>>%%. `%%% %' >%%%%%%>,  ' >>%>>%%%>%>>> >>%%' ,%%>%'.%%>>%.
              .%%'  %%%%>%.   `>%%. %>%%>>>%.>> >>>%>%%%%>%>>.>>>'.>%>%>' %>>%>%%
              `.%%  `%>>%%>    %%>%  %>>>%%%>>'.>%>>>>%%%>>%>>.>',%>>%'  ,>%'>% '
               %>'  %%%%%%'    `%%'  %%%%%> >' >>>>%>>%%>>%>>%> %%>%>' .%>%% .%%
              %>%>, %>%%>>%%,  %>%>% `%%  %>>  >>>%>>>%%>>>>%>>  %%>>,%>%%'.%>%,
             %>%>%%, `%>%%>%>%, %>%%> ,%>%>>>.>>`.,.  `"   ..'>.%. % %>%>%'.%>%%;
             %'`%%>%  %%>%%  %>% %'.>%>>%>%%>>%::.  `,   /' ,%>>>%>. >%>%'.%>%'%'
             ` .%>%'  >%%% %>%%'.>%>%;''.,>>%%>%%::.  ..'.,%>>%>%>,`%  %'.>%%' '
               %>%>%% `%>  >%%'.%%>%>>%>%>%>>>%>%>>%,,::,%>>%%>%>>%>%% `>>%>'
               %'`%%>%>>%  %>'.%>>%>%>>;'' ..,,%>%>%%/::%>%%>>%%,,.``% .%>%%
               `    `%>%>>%%' %>%%>>%>>%>%>%>%%>%/'       `%>%%>%>>%%% ' .%'
                     %'  `%>% `%>%%;'' .,>>%>%/',;;;;;,;;;;,`%>%>%,`%'   '
                     `    `  ` `%>%%%>%%>%%;/ @a;;;;;;;;;;;a@  >%>%%'
                                `/////////';, `@a@@a@@a@@aa@',;`//'
                                   `//////.;;,,............,,;;//'
                                       `////;;;;;;;;;;;;;;;;;/'
                                          `/////////////////'
                                   /
                                  /
                                 /
                       HAS TO COME CORRECT!!!!!
EOT
end

