.class public Lcom/stericson/RootTools/containers/Permissions;
.super Ljava/lang/Object;
.source "Permissions.java"


# instance fields
.field group:Ljava/lang/String;

.field other:Ljava/lang/String;

.field permissions:I

.field symlink:Ljava/lang/String;

.field type:Ljava/lang/String;

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupPermissions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getOther()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->other:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherPermissions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->other:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/stericson/RootTools/containers/Permissions;->permissions:I

    return v0
.end method

.method public getSymlink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->symlink:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPermissions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/stericson/RootTools/containers/Permissions;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->group:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setGroupPermissions(Ljava/lang/String;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->group:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setOther(Ljava/lang/String;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->other:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setOtherPermissions(Ljava/lang/String;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->other:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setPermissions(I)V
    .locals 0
    .parameter "permissions"

    .prologue
    .line 75
    iput p1, p0, Lcom/stericson/RootTools/containers/Permissions;->permissions:I

    .line 76
    return-void
.end method

.method public setSymlink(Ljava/lang/String;)V
    .locals 0
    .parameter "symlink"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->symlink:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->type:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->user:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUserPermissions(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/stericson/RootTools/containers/Permissions;->user:Ljava/lang/String;

    .line 81
    return-void
.end method
