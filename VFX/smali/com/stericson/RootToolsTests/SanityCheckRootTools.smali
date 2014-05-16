.class public Lcom/stericson/RootToolsTests/SanityCheckRootTools;
.super Landroid/app/Activity;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;,
        Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;
    }
.end annotation


# instance fields
.field private mPDialog:Landroid/app/ProgressDialog;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 363
    return-void
.end method

.method static synthetic access$100(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 64
    new-instance v4, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 71
    const/4 v4, 0x1

    sput-boolean v4, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 73
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    .line 74
    iget-object v4, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    .line 76
    iget-object v4, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 77
    iget-object v4, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->setContentView(Landroid/view/View;)V

    .line 80
    const-string v3, "?"

    .line 82
    .local v3, version:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 84
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 88
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SanityCheckRootTools v "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    const-string v4, "Root found.\n"

    invoke-virtual {p0, v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->startRootShell()Lcom/stericson/RootTools/execution/Shell;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/stericson/RootTools/exceptions/RootDeniedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 112
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v4

    if-nez v4, :cond_1

    .line 113
    const-string v4, "ERROR: No root access to this device.\n"

    invoke-virtual {p0, v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 127
    :goto_3
    return-void

    .line 95
    :cond_0
    const-string v4, "Root not found"

    invoke-virtual {p0, v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 100
    :catch_0
    move-exception v1

    .line 102
    .local v1, e2:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 103
    .end local v1           #e2:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 104
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    const-string v4, "[ TIMEOUT EXCEPTION! ]\n"

    invoke-virtual {p0, v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_2

    .line 106
    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v0

    .line 107
    .local v0, e:Lcom/stericson/RootTools/exceptions/RootDeniedException;
    const-string v4, "[ ROOT DENIED EXCEPTION! ]\n"

    invoke-virtual {p0, v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v0}, Lcom/stericson/RootTools/exceptions/RootDeniedException;->printStackTrace()V

    goto :goto_2

    .line 116
    .end local v0           #e:Lcom/stericson/RootTools/exceptions/RootDeniedException;
    :catch_3
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ERROR: could not determine root access to this device.\n"

    invoke-virtual {p0, v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 122
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    .line 123
    iget-object v4, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 124
    iget-object v4, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 126
    new-instance v4, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;

    new-instance v5, Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$TestHandler;-><init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools;Lcom/stericson/RootToolsTests/SanityCheckRootTools$1;)V

    invoke-direct {v4, p0, p0, v5}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;-><init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v4}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$SanityCheckThread;->start()V

    goto :goto_3

    .line 85
    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method protected print(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/stericson/RootToolsTests/SanityCheckRootTools$1;

    invoke-direct {v1, p0}, Lcom/stericson/RootToolsTests/SanityCheckRootTools$1;-><init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method
