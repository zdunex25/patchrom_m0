.class public Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;
.super Landroid/app/DialogFragment;
.source "CamcorderSlowMotionMenuDialog.java"


# static fields
.field public static final FASTMOTION:I = 0x0

.field public static final SLOWMOTION:I = 0x1


# instance fields
.field private final DIALOG_HEIGHT:I

.field public mDialogType:I

.field public final mFastSettingValue:[I

.field public final mFastStringId:[I

.field public final mSlowSettingValue:[I

.field public final mSlowStringId:[I

.field public final mType:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    const/4 v1, 0x3

    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 32
    const/16 v0, 0x252

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->DIALOG_HEIGHT:I

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mType:[I

    .line 37
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mSlowStringId:[I

    .line 39
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mFastStringId:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mSlowSettingValue:[I

    .line 46
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mFastSettingValue:[I

    return-void

    .line 36
    :array_0
    .array-data 0x4
        0x89t 0x0t 0x9t 0x7ft
        0x8at 0x0t 0x9t 0x7ft
    .end array-data

    .line 37
    :array_1
    .array-data 0x4
        0x44t 0x1t 0x9t 0x7ft
        0x45t 0x1t 0x9t 0x7ft
        0x46t 0x1t 0x9t 0x7ft
    .end array-data

    .line 39
    :array_2
    .array-data 0x4
        0x47t 0x1t 0x9t 0x7ft
        0x48t 0x1t 0x9t 0x7ft
        0x49t 0x1t 0x9t 0x7ft
        0x4at 0x1t 0x9t 0x7ft
        0x4bt 0x1t 0x9t 0x7ft
        0x4ct 0x1t 0x9t 0x7ft
        0x4dt 0x1t 0x9t 0x7ft
    .end array-data

    .line 43
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_4
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static newInstance(I)Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;
    .locals 3
    .parameter "type"

    .prologue
    .line 53
    new-instance v1, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;

    invoke-direct {v1}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;-><init>()V

    .line 54
    .local v1, frag:Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->setArguments(Landroid/os/Bundle;)V

    .line 57
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mDialogType:I

    .line 63
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mType:[I

    iget v9, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mDialogType:I

    aget v6, v8, v9

    .line 64
    .local v6, title:I
    const/4 v8, 0x7

    new-array v2, v8, [Ljava/lang/String;

    .line 65
    .local v2, fastitems:[Ljava/lang/String;
    const/4 v8, 0x3

    new-array v5, v8, [Ljava/lang/String;

    .line 67
    .local v5, slowitems:[Ljava/lang/String;
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mSlowStringId:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 68
    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mSlowStringId:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 69
    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mSlowStringId:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 70
    const/4 v8, 0x0

    const-string v9, "%s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mFastStringId:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f09013f

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 71
    const/4 v8, 0x1

    const-string v9, "%s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mFastStringId:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f09013f

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 72
    const/4 v8, 0x2

    const-string v9, "%s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mFastStringId:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f09013f

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 73
    const/4 v8, 0x3

    const-string v9, "%s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mFastStringId:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f09013f

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 74
    const/4 v8, 0x4

    const-string v9, "%s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mFastStringId:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f09013f

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 75
    const/4 v8, 0x5

    const-string v9, "%s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mFastStringId:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f09013f

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 76
    const/4 v8, 0x6

    const-string v9, "%s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mFastStringId:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f09013f

    invoke-virtual {p0, v12}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 77
    const/4 v4, 0x0

    .line 78
    .local v4, selectedIndex:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingSpeed()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 108
    :goto_0
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    iget v8, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mDialogType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 111
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0900d9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$2;

    invoke-direct {v10, p0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$2;-><init>(Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$1;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$1;-><init>(Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;)V

    invoke-virtual {v8, v2, v4, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    :goto_1
    iget v8, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->mDialogType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 139
    .local v1, dialog2:Landroid/app/Dialog;
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 140
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 141
    const/4 v8, 0x2

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 142
    const/4 v8, -0x2

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 143
    const/16 v8, 0x252

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 144
    const v8, 0x3f333333

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 146
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 147
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 148
    .local v7, window:Landroid/view/Window;
    invoke-virtual {v7}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    .line 149
    invoke-virtual {v7, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 150
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    .end local v1           #dialog2:Landroid/app/Dialog;
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v7           #window:Landroid/view/Window;
    :goto_2
    return-object v1

    .line 80
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    const/4 v4, 0x6

    .line 81
    goto :goto_0

    .line 83
    :pswitch_2
    const/4 v4, 0x5

    .line 84
    goto :goto_0

    .line 86
    :pswitch_3
    const/4 v4, 0x4

    .line 87
    goto :goto_0

    .line 89
    :pswitch_4
    const/4 v4, 0x3

    .line 90
    goto :goto_0

    .line 94
    :pswitch_5
    const/4 v4, 0x2

    .line 95
    goto :goto_0

    .line 99
    :pswitch_6
    const/4 v4, 0x1

    .line 100
    goto :goto_0

    .line 123
    .restart local v0       #dialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0900d9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$4;

    invoke-direct {v10, p0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$4;-><init>(Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$3;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$3;-><init>(Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;)V

    invoke-virtual {v8, v5, v4, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_2

    .line 78
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
