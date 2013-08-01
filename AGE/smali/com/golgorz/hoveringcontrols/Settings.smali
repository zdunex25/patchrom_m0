.class public Lcom/golgorz/hoveringcontrols/Settings;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field private a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/Settings;->addPreferencesFromResource(I)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "screenoffInfo"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "quickGlance"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    const-string v1, "pauseLandscape"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pauseOnlyHold"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    new-instance v1, Lcom/golgorz/hoveringcontrols/af;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/af;-><init>(Lcom/golgorz/hoveringcontrols/Settings;)V

    iput-object v1, p0, Lcom/golgorz/hoveringcontrols/Settings;->a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/Settings;->a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "quickGlance"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pauseOnlyHold"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/Settings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/Settings;->stopService(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/Settings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method
