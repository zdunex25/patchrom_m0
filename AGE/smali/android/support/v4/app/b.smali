.class final Landroid/support/v4/app/b;
.super Landroid/support/v4/app/p;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/support/v4/app/l;

.field b:Landroid/support/v4/app/c;

.field c:Landroid/support/v4/app/c;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:I

.field p:I

.field q:Ljava/lang/CharSequence;

.field r:I

.field s:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/l;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/p;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/b;->l:Z

    iput-object p1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method a(I)V
    .locals 6

    iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Landroid/support/v4/app/l;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->r:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->r:I

    sget-boolean v0, Landroid/support/v4/app/l;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->r:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v3, v0, Landroid/support/v4/app/Fragment;->r:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->r:I

    sget-boolean v3, Landroid/support/v4/app/l;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "BackStackEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/support/v4/app/Fragment;->r:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, v2, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    move-object v2, v0

    goto/16 :goto_0
.end method

.method a(Landroid/support/v4/app/c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;

    iput-object p1, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    :goto_0
    iget v0, p0, Landroid/support/v4/app/b;->e:I

    iput v0, p1, Landroid/support/v4/app/c;->e:I

    iget v0, p0, Landroid/support/v4/app/b;->f:I

    iput v0, p1, Landroid/support/v4/app/c;->f:I

    iget v0, p0, Landroid/support/v4/app/b;->g:I

    iput v0, p1, Landroid/support/v4/app/c;->g:I

    iget v0, p0, Landroid/support/v4/app/b;->h:I

    iput v0, p1, Landroid/support/v4/app/c;->h:I

    iget v0, p0, Landroid/support/v4/app/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/b;->d:I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;

    iput-object v0, p1, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/c;

    iget-object v0, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;

    iput-object p1, v0, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    iput-object p1, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->o:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/b;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Landroid/support/v4/app/b;->i:I

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Landroid/support/v4/app/b;->e:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/b;->f:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Landroid/support/v4/app/b;->g:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/b;->h:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Landroid/support/v4/app/b;->p:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/b;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/b;->q:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Landroid/support/v4/app/b;->r:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/b;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/b;->s:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    if-eqz v0, :cond_f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Op #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "cmd="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v2, Landroid/support/v4/app/c;->c:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " fragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget v0, v2, Landroid/support/v4/app/c;->e:I

    if-nez v0, :cond_9

    iget v0, v2, Landroid/support/v4/app/c;->f:I

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v2, Landroid/support/v4/app/c;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " exitAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v2, Landroid/support/v4/app/c;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v0, v2, Landroid/support/v4/app/c;->g:I

    if-nez v0, :cond_b

    iget v0, v2, Landroid/support/v4/app/c;->h:I

    if-eqz v0, :cond_c

    :cond_b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v2, Landroid/support/v4/app/c;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " popExitAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v2, Landroid/support/v4/app/c;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    move v0, v1

    :goto_1
    iget-object v4, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_e

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    const-string v4, "Removed: "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    iget-object v4, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const-string v4, "Removed:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    iget-object v0, v2, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    move-object v2, v0

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public a(Z)V
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x0

    sget-boolean v0, Landroid/support/v4/app/l;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popFromBackStack: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v6}, Landroid/support/v4/app/b;->a(I)V

    iget-object v0, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_3

    iget v0, v3, Landroid/support/v4/app/c;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Landroid/support/v4/app/c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v3, Landroid/support/v4/app/c;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/l;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;II)V

    :cond_1
    :goto_1
    iget-object v0, v3, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/c;

    move-object v3, v0

    goto :goto_0

    :pswitch_1
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    iget v1, v3, Landroid/support/v4/app/c;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/l;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;II)V

    :cond_2
    iget-object v0, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_2
    iget-object v0, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v4, v3, Landroid/support/v4/app/c;->g:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v4, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    invoke-virtual {v4, v0, v2}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_2
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v3, Landroid/support/v4/app/c;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    :pswitch_3
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v3, Landroid/support/v4/app/c;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/l;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/l;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    :pswitch_4
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v3, Landroid/support/v4/app/c;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/l;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/l;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    :pswitch_5
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v3, Landroid/support/v4/app/c;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/l;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/l;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v3, Landroid/support/v4/app/c;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/l;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/l;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v1, v1, Landroid/support/v4/app/l;->n:I

    iget v2, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v2}, Landroid/support/v4/app/l;->c(I)I

    move-result v2

    iget v3, p0, Landroid/support/v4/app/b;->j:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/l;->a(IIIZ)V

    :cond_4
    iget v0, p0, Landroid/support/v4/app/b;->o:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v1, p0, Landroid/support/v4/app/b;->o:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->b(I)V

    iput v6, p0, Landroid/support/v4/app/b;->o:I

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Landroid/support/v4/app/l;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/b;->o:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v8}, Landroid/support/v4/app/b;->a(I)V

    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    move-object v4, v0

    :goto_0
    if-eqz v4, :cond_b

    iget v0, v4, Landroid/support/v4/app/c;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Landroid/support/v4/app/c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v4, Landroid/support/v4/app/c;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;Z)V

    :cond_2
    :goto_1
    iget-object v0, v4, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    move-object v4, v0

    goto :goto_0

    :pswitch_1
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget-object v1, v1, Landroid/support/v4/app/l;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    move v1, v2

    move-object v3, v0

    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    sget-boolean v5, Landroid/support/v4/app/l;->a:Z

    if-eqz v5, :cond_3

    const-string v5, "BackStackEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OP_REPLACE: adding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_4

    iget v5, v0, Landroid/support/v4/app/Fragment;->v:I

    iget v6, v3, Landroid/support/v4/app/Fragment;->v:I

    if-ne v5, v6, :cond_5

    :cond_4
    if-ne v0, v3, :cond_6

    const/4 v3, 0x0

    iput-object v3, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    :cond_5
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    iget-object v5, v4, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-nez v5, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    :cond_7
    iget-object v5, v4, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v4, Landroid/support/v4/app/c;->f:I

    iput v5, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-boolean v5, p0, Landroid/support/v4/app/b;->k:Z

    if-eqz v5, :cond_8

    iget v5, v0, Landroid/support/v4/app/Fragment;->r:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Landroid/support/v4/app/Fragment;->r:I

    sget-boolean v5, Landroid/support/v4/app/l;->a:Z

    if-eqz v5, :cond_8

    const-string v5, "BackStackEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bump nesting of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/support/v4/app/Fragment;->r:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v5, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v6, p0, Landroid/support/v4/app/b;->i:I

    iget v7, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v5, v0, v6, v7}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;II)V

    goto :goto_3

    :cond_9
    move-object v3, v0

    :cond_a
    if-eqz v3, :cond_2

    iget v0, v4, Landroid/support/v4/app/c;->e:I

    iput v0, v3, Landroid/support/v4/app/Fragment;->E:I

    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v4, Landroid/support/v4/app/c;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v4, Landroid/support/v4/app/c;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/l;->b(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v4, Landroid/support/v4/app/c;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/l;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v4, Landroid/support/v4/app/c;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/l;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v4, Landroid/support/v4/app/c;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->E:I

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/l;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    iget v1, v1, Landroid/support/v4/app/l;->n:I

    iget v2, p0, Landroid/support/v4/app/b;->i:I

    iget v3, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/support/v4/app/l;->a(IIIZ)V

    iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/b;)V

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
