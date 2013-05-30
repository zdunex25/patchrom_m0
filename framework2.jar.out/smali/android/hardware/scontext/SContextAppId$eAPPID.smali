.class public final enum Landroid/hardware/scontext/SContextAppId$eAPPID;
.super Ljava/lang/Enum;
.source "SContextAppId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextAppId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eAPPID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/scontext/SContextAppId$eAPPID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/scontext/SContextAppId$eAPPID;

.field public static final enum APPID_TEST:Landroid/hardware/scontext/SContextAppId$eAPPID;

.field public static final enum FINAL_APPLICATION:Landroid/hardware/scontext/SContextAppId$eAPPID;

.field public static final enum NO_APPLICATION:Landroid/hardware/scontext/SContextAppId$eAPPID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Landroid/hardware/scontext/SContextAppId$eAPPID;

    const-string v1, "NO_APPLICATION"

    invoke-direct {v0, v1, v2}, Landroid/hardware/scontext/SContextAppId$eAPPID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/SContextAppId$eAPPID;->NO_APPLICATION:Landroid/hardware/scontext/SContextAppId$eAPPID;

    .line 21
    new-instance v0, Landroid/hardware/scontext/SContextAppId$eAPPID;

    const-string v1, "APPID_TEST"

    invoke-direct {v0, v1, v3}, Landroid/hardware/scontext/SContextAppId$eAPPID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/SContextAppId$eAPPID;->APPID_TEST:Landroid/hardware/scontext/SContextAppId$eAPPID;

    .line 24
    new-instance v0, Landroid/hardware/scontext/SContextAppId$eAPPID;

    const-string v1, "FINAL_APPLICATION"

    invoke-direct {v0, v1, v4}, Landroid/hardware/scontext/SContextAppId$eAPPID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/scontext/SContextAppId$eAPPID;->FINAL_APPLICATION:Landroid/hardware/scontext/SContextAppId$eAPPID;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/hardware/scontext/SContextAppId$eAPPID;

    sget-object v1, Landroid/hardware/scontext/SContextAppId$eAPPID;->NO_APPLICATION:Landroid/hardware/scontext/SContextAppId$eAPPID;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/scontext/SContextAppId$eAPPID;->APPID_TEST:Landroid/hardware/scontext/SContextAppId$eAPPID;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/scontext/SContextAppId$eAPPID;->FINAL_APPLICATION:Landroid/hardware/scontext/SContextAppId$eAPPID;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/scontext/SContextAppId$eAPPID;->$VALUES:[Landroid/hardware/scontext/SContextAppId$eAPPID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/scontext/SContextAppId$eAPPID;
    .locals 1
    .parameter "name"

    .prologue
    .line 17
    const-class v0, Landroid/hardware/scontext/SContextAppId$eAPPID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAppId$eAPPID;

    return-object v0
.end method

.method public static values()[Landroid/hardware/scontext/SContextAppId$eAPPID;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Landroid/hardware/scontext/SContextAppId$eAPPID;->$VALUES:[Landroid/hardware/scontext/SContextAppId$eAPPID;

    invoke-virtual {v0}, [Landroid/hardware/scontext/SContextAppId$eAPPID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/scontext/SContextAppId$eAPPID;

    return-object v0
.end method
