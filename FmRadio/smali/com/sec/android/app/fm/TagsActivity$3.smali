.class Lcom/sec/android/app/fm/TagsActivity$3;
.super Ljava/lang/Object;
.source "TagsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/TagsActivity;->updateTags(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/TagsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/TagsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 812
    iput-object p1, p0, Lcom/sec/android/app/fm/TagsActivity$3;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 815
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 817
    .local v2, search:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.music.SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v1, i:Landroid/content/Intent;
    const-string v3, "all"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/TagsActivity$3;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/fm/TagsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 830
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    .line 823
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 824
    :catch_1
    move-exception v3

    goto :goto_0

    .line 825
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v0

    .line 827
    .local v0, e:Ljava/lang/SecurityException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 828
    :catch_3
    move-exception v3

    goto :goto_0
.end method
