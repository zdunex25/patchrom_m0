.class public Landroid/support/v4/app/g;
.super Landroid/app/Activity;


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/support/v4/app/l;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Landroid/support/v4/c/c;

.field l:Landroid/support/v4/app/s;


# virtual methods
.method a(IZZ)Landroid/support/v4/app/s;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/c/c;

    invoke-direct {v0}, Landroid/support/v4/c/c;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s;

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Landroid/support/v4/app/s;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/app/s;-><init>(Landroid/support/v4/app/g;Z)V

    iget-object v1, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/c/c;->b(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p0}, Landroid/support/v4/app/s;->a(Landroid/support/v4/app/g;)V

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->l()V

    return-void
.end method

.method a(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/s;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->h()V

    iget-object v0, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/c;->c(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 0

    return-void
.end method

.method a(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/g;->f:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v4/app/g;->f:Z

    iput-boolean p1, p0, Landroid/support/v4/app/g;->g:Z

    iget-object v0, p0, Landroid/support/v4/app/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/g;->d()V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->h:Z

    goto :goto_0
.end method

.method d()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/g;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/g;->j:Z

    iget-object v0, p0, Landroid/support/v4/app/g;->l:Landroid/support/v4/app/s;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/g;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/g;->l:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->c()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->o()V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/g;->l:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->d()V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/g;->c:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/g;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/g;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/g;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/g;->l:Landroid/support/v4/app/s;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->l:Landroid/support/v4/app/s;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->l:Landroid/support/v4/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/s;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    iget-object v1, v1, Landroid/support/v4/app/l;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    iget-object v1, v1, Landroid/support/v4/app/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result fragment index out of range: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    iget-object v1, v1, Landroid/support/v4/app/l;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_2

    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const v1, 0xffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/g;->finish()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/g;)V

    invoke-virtual {p0}, Landroid/support/v4/app/g;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/g;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v4/app/g;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/i;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/support/v4/app/i;->e:Landroid/support/v4/c/c;

    iput-object v1, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/support/v4/app/i;->d:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/l;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->i()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    if-nez p1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {p0}, Landroid/support/v4/app/g;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/l;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v6, -0x1

    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class"

    invoke-interface {p3, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/support/v4/app/h;->a:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    if-nez v0, :cond_1

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v4, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    :cond_2
    if-ne v3, v6, :cond_3

    if-ne v2, v6, :cond_3

    if-nez v5, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-eq v2, v6, :cond_4

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    if-eqz v5, :cond_5

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v1, v5}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    if-eq v3, v6, :cond_6

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    :cond_6
    sget-boolean v4, Landroid/support/v4/app/l;->a:Z

    if-eqz v4, :cond_7

    const-string v4, "FragmentActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateView: id=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fname="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " existing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-nez v1, :cond_9

    invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->o:Z

    if-eqz v2, :cond_8

    move v1, v2

    :goto_1
    iput v1, v4, Landroid/support/v4/app/Fragment;->u:I

    iput v3, v4, Landroid/support/v4/app/Fragment;->v:I

    iput-object v5, v4, Landroid/support/v4/app/Fragment;->w:Ljava/lang/String;

    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->p:Z

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    iput-object v1, v4, Landroid/support/v4/app/Fragment;->s:Landroid/support/v4/app/l;

    iget-object v1, v4, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    invoke-virtual {v4, p0, p3, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v1, v4, v8}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;Z)V

    move-object v1, v4

    :goto_2
    iget-object v3, v1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    if-nez v3, :cond_c

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " did not create a view."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move v1, v3

    goto :goto_1

    :cond_9
    iget-boolean v4, v1, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v4, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": Duplicate id 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", tag "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", or parent id 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    iput-boolean v8, v1, Landroid/support/v4/app/Fragment;->p:Z

    iget-boolean v3, v1, Landroid/support/v4/app/Fragment;->A:Z

    if-nez v3, :cond_b

    iget-object v3, v1, Landroid/support/v4/app/Fragment;->d:Landroid/os/Bundle;

    invoke-virtual {v1, p0, p3, v3}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_b
    iget-object v3, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/l;->b(Landroid/support/v4/app/Fragment;)V

    goto :goto_2

    :cond_c
    if-eqz v2, :cond_d

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    :cond_d
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, v1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_e
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->G:Landroid/view/View;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/g;->a(Z)V

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->p()V

    iget-object v0, p0, Landroid/support/v4/app/g;->l:Landroid/support/v4/app/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/g;->l:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->h()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/g;->onBackPressed()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->q()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/l;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/l;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/l;->b(Landroid/view/Menu;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/g;->d:Z

    iget-object v0, p0, Landroid/support/v4/app/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/g;->a()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->m()V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Landroid/support/v4/app/g;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/g;->a()V

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->d()Z

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/app/g;->h:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/app/g;->h:Z

    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/g;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    iget-object v2, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v2, p3}, Landroid/support/v4/app/l;->a(Landroid/view/Menu;)Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Landroid/support/v4/app/g;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->d:Z

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->d()Z

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 8

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/v4/app/g;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/app/g;->a(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/g;->b()Ljava/lang/Object;

    move-result-object v5

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->f()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    invoke-virtual {v0}, Landroid/support/v4/c/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    invoke-virtual {v0, v4}, Landroid/support/v4/c/c;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s;

    iget-boolean v7, v0, Landroid/support/v4/app/s;->f:Z

    if-eqz v7, :cond_1

    move v0, v1

    :goto_1
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/s;->h()V

    iget-object v0, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    invoke-virtual {v0, v4}, Landroid/support/v4/c/c;->d(I)V

    move v0, v2

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    if-nez v2, :cond_3

    if-nez v5, :cond_3

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_3
    new-instance v0, Landroid/support/v4/app/i;

    invoke-direct {v0}, Landroid/support/v4/app/i;-><init>()V

    iput-object v3, v0, Landroid/support/v4/app/i;->a:Ljava/lang/Object;

    iput-object v5, v0, Landroid/support/v4/app/i;->b:Ljava/lang/Object;

    iput-object v3, v0, Landroid/support/v4/app/i;->c:Ljava/util/HashMap;

    iput-object v6, v0, Landroid/support/v4/app/i;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    iput-object v1, v0, Landroid/support/v4/app/i;->e:Landroid/support/v4/c/c;

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->g()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iput-boolean v3, p0, Landroid/support/v4/app/g;->e:Z

    iput-boolean v3, p0, Landroid/support/v4/app/g;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->c:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/support/v4/app/g;->c:Z

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->j()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->h()V

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->d()Z

    iget-boolean v0, p0, Landroid/support/v4/app/g;->j:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Landroid/support/v4/app/g;->j:Z

    iget-object v0, p0, Landroid/support/v4/app/g;->l:Landroid/support/v4/app/s;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/g;->l:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()V

    :cond_1
    :goto_0
    iput-boolean v2, p0, Landroid/support/v4/app/g;->i:Z

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->k()V

    iget-object v0, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    invoke-virtual {v0}, Landroid/support/v4/c/c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/g;->k:Landroid/support/v4/c/c;

    invoke-virtual {v0, v1}, Landroid/support/v4/c/c;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->e()V

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/g;->i:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    iget-boolean v1, p0, Landroid/support/v4/app/g;->j:Z

    invoke-virtual {p0, v0, v1, v3}, Landroid/support/v4/app/g;->a(IZZ)Landroid/support/v4/app/s;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/g;->l:Landroid/support/v4/app/s;

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected onStop()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iput-boolean v1, p0, Landroid/support/v4/app/g;->e:Z

    iget-object v0, p0, Landroid/support/v4/app/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->n()V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
