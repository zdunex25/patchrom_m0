.class public Lnu/xom/IllegalDataException;
.super Lnu/xom/WellformednessException;


# static fields
.field private static final serialVersionUID:J = 0x47021c67b0c00c38L


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/WellformednessException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnu/xom/WellformednessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/IllegalDataException;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnu/xom/IllegalDataException;->data:Ljava/lang/String;

    return-void
.end method
