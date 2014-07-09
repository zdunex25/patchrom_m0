.class public Lpavlyukoff/m7Parts/PropFile$DataLine;
.super Ljava/lang/Object;
.source "PropFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpavlyukoff/m7Parts/PropFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataLine"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "paramString"

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Lpavlyukoff/m7Parts/PropFile$DataLine;->value:Ljava/lang/String;

    .line 342
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lpavlyukoff/m7Parts/PropFile$DataLine;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "paramString"

    .prologue
    .line 351
    iput-object p1, p0, Lpavlyukoff/m7Parts/PropFile$DataLine;->value:Ljava/lang/String;

    .line 352
    return-void
.end method
