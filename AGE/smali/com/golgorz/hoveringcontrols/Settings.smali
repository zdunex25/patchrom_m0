.class public Lcom/golgorz/hoveringcontrols/Settings;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field private a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private b:Z

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/preference/Preference;

.field private e:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/Settings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/Settings;->b:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/Settings;->addPreferencesFromResource(I)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->c:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->c:Landroid/content/SharedPreferences;

    const-string v1, "screenoffInfo"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "quickGlance"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->c:Landroid/content/SharedPreferences;

    const-string v1, "pauseLandscape"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pauseOnlyHold"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->c:Landroid/content/SharedPreferences;

    const-string v1, "musicControls"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "videoplayer"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_2
    new-instance v0, Lcom/golgorz/hoveringcontrols/aq;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/aq;-><init>(Lcom/golgorz/hoveringcontrols/Settings;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->c:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/Settings;->a:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v0, "videoplayer"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->d:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->d:Landroid/preference/Preference;

    new-instance v1, Lcom/golgorz/hoveringcontrols/ar;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/ar;-><init>(Lcom/golgorz/hoveringcontrols/Settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "target"

    invoke-virtual {p0, v0, v2}, Lcom/golgorz/hoveringcontrols/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->e:Landroid/content/SharedPreferences;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "quickGlance"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pauseOnlyHold"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "videoplayer"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->b:Z

    if-eqz v0, :cond_1

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
    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->b:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->e:Landroid/content/SharedPreferences;

    const-string v1, "videoplayername"

    const-string v2, "empty"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/Settings;->d:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selected video player: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/Settings;->e:Landroid/content/SharedPreferences;

    const-string v3, "videoplayername"

    const-string v4, "None"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pref value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/Settings;->c:Landroid/content/SharedPreferences;

    const-string v3, "videoplayername"

    const-string v4, "empty"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
