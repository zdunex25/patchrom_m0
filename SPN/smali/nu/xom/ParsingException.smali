.class public Lnu/xom/ParsingException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = -0x47f66bbd07f4b91aL


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private causeSet:Z

.field private columnNumber:I

.field private lineNumber:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lnu/xom/ParsingException;->lineNumber:I

    iput v0, p0, Lnu/xom/ParsingException;->columnNumber:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/ParsingException;->causeSet:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/Throwable;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lnu/xom/ParsingException;->lineNumber:I

    iput v0, p0, Lnu/xom/ParsingException;->columnNumber:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/ParsingException;->causeSet:Z

    iput p2, p0, Lnu/xom/ParsingException;->lineNumber:I

    iput p3, p0, Lnu/xom/ParsingException;->columnNumber:I

    invoke-virtual {p0, p4}, Lnu/xom/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lnu/xom/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Throwable;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lnu/xom/ParsingException;->lineNumber:I

    iput v0, p0, Lnu/xom/ParsingException;->columnNumber:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/ParsingException;->causeSet:Z

    iput p3, p0, Lnu/xom/ParsingException;->lineNumber:I

    iput p4, p0, Lnu/xom/ParsingException;->columnNumber:I

    iput-object p2, p0, Lnu/xom/ParsingException;->uri:Ljava/lang/String;

    invoke-virtual {p0, p5}, Lnu/xom/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lnu/xom/ParsingException;->lineNumber:I

    iput v0, p0, Lnu/xom/ParsingException;->columnNumber:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/ParsingException;->causeSet:Z

    iput-object p2, p0, Lnu/xom/ParsingException;->uri:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lnu/xom/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lnu/xom/ParsingException;->lineNumber:I

    iput v0, p0, Lnu/xom/ParsingException;->columnNumber:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnu/xom/ParsingException;->causeSet:Z

    invoke-virtual {p0, p2}, Lnu/xom/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lnu/xom/ParsingException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lnu/xom/ParsingException;->columnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lnu/xom/ParsingException;->lineNumber:I

    return v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/ParsingException;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    iget-boolean v0, p0, Lnu/xom/ParsingException;->causeSet:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t overwrite cause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Self-causation not permitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lnu/xom/ParsingException;->cause:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnu/xom/ParsingException;->causeSet:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnu/xom/ParsingException;->lineNumber:I

    if-ltz v1, :cond_0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lnu/xom/ParsingException;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lnu/xom/ParsingException;->columnNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lnu/xom/ParsingException;->uri:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lnu/xom/ParsingException;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
