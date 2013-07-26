.class public Lnu/xom/jaxen/expr/DefaultProcessingInstructionNodeStep;
.super Lnu/xom/jaxen/expr/DefaultStep;

# interfaces
.implements Lnu/xom/jaxen/expr/ProcessingInstructionNodeStep;


# static fields
.field private static final serialVersionUID:J = -0x42f5d89219dd83cfL


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnu/xom/jaxen/expr/iter/IterableAxis;Ljava/lang/String;Lnu/xom/jaxen/expr/PredicateSet;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lnu/xom/jaxen/expr/DefaultStep;-><init>(Lnu/xom/jaxen/expr/iter/IterableAxis;Lnu/xom/jaxen/expr/PredicateSet;)V

    iput-object p2, p0, Lnu/xom/jaxen/expr/DefaultProcessingInstructionNodeStep;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/jaxen/expr/DefaultProcessingInstructionNodeStep;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultProcessingInstructionNodeStep;->getAxisName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "::processing-instruction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultProcessingInstructionNodeStep;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Lnu/xom/jaxen/expr/DefaultStep;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public matches(Ljava/lang/Object;Lnu/xom/jaxen/ContextSupport;)Z
    .locals 3

    invoke-virtual {p2}, Lnu/xom/jaxen/ContextSupport;->getNavigator()Lnu/xom/jaxen/Navigator;

    move-result-object v0

    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->isProcessingInstruction(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnu/xom/jaxen/expr/DefaultProcessingInstructionNodeStep;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v0, p1}, Lnu/xom/jaxen/Navigator;->getProcessingInstructionTarget(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
