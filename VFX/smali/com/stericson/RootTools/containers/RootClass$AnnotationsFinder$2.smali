.class Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder$2;
.super Ljava/lang/Object;
.source "RootClass.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;->getBuiltPath()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;


# direct methods
.method constructor <init>(Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder$2;->this$0:Lcom/stericson/RootTools/containers/RootClass$AnnotationsFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "pathname"

    .prologue
    .line 263
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
