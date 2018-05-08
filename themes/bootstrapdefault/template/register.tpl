<nav class="navbar navbar-default" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <div class="navbar-brand"><a href="{$U_HOME}">{'Home'|@translate}</a>{$LEVEL_SEPARATOR}<a href>{'Registration'|@translate}</a></div>
        </div>
    </div>
</nav>

{include file='infos_errors.tpl'}

<div class="container">
    <form method="post" action="{$F_ACTION}" class="form-horizontal" name="register_form">
        <div class="panel panel-primary">
            <div class="panel-heading">
                {'Enter your personnal informations'|@translate}
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label for="login" class="col-sm-2 control-label">{'Username'|@translate} *</label>
                    <div class="col-sm-4">
                        <input type="text" name="login" id="login" value="{$F_LOGIN}" class="form-control" placeholder="{'Username'|@translate}" required="required"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label">{'Password'|@translate} *</label>
                    <div class="col-sm-4">
                        <input type="password" name="password" id="password" class="form-control" placeholder="{'Password'|@translate}" required="required"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password_conf" class="col-sm-2 control-label">{'Confirm Password'|@translate} *</label>
                    <div class="col-sm-4">
                        <input type="password" name="password_conf" id="password_conf" class="form-control" placeholder="{'Confirm Password'|@translate}" required="required"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="mail_address" class="col-sm-2 control-label">{'Email address'|@translate}{if $obligatory_user_mail_address} *{/if}</label>
                    <div class="col-sm-4">
                        <input type="email" name="mail_address" id="mail_address" value="{$F_EMAIL}" class="form-control" placeholder="{'Email address'|@translate}"{if $obligatory_user_mail_address} required="required"{/if}>
{if not $obligatory_user_mail_address}
                        ({'useful when password forgotten'|@translate})
{/if}
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="send_password_by_mail" value="1" checked="checked"> {'Send my connection settings by email'|@translate}
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="hidden" name="key" value="{$F_KEY}" >
                        <input type="submit" name="submit" value="{'Register'|@translate}" class="btn btn-default btn-primary">
                        <input type="reset" value="{'Reset'|@translate}" class="btn btn-default">
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript"><!--
    document.getElementById('login').focus();
//--></script>