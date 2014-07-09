.class public Lcom/vipercn/viper4android_v2/activity/DDCDatabase;
.super Ljava/lang/Object;
.source "DDCDatabase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockToFloatArray(Ljava/lang/String;)[F
    .locals 7
    .parameter "szDDCBlock"

    .prologue
    const/4 v4, 0x0

    .line 121
    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    .line 123
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move-object v1, v4

    .line 133
    :cond_1
    :goto_0
    return-object v1

    .line 126
    :cond_2
    :try_start_0
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, szCoeffs:[Ljava/lang/String;
    array-length v5, v3

    new-array v1, v5, [F

    .line 128
    .local v1, faCoeffsArray:[F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 129
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    .end local v1           #faCoeffsArray:[F
    .end local v2           #i:I
    .end local v3           #szCoeffs:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    move-object v1, v4

    .line 133
    goto :goto_0
.end method

.method public static initializeDatabase(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    .line 17
    invoke-static {p0}, Lcom/vipercn/viper4android_v2/activity/Utils;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, szLocalDatabasePathName:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ViPERDDC.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, fDBFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    const-string v2, "ViPERDDC.db"

    const-string v3, "ViPERDDC.db"

    invoke-static {p0, v2, v3}, Lcom/vipercn/viper4android_v2/activity/Utils;->copyAssetsToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 32
    :goto_1
    return v2

    .line 21
    .end local v0           #fDBFile:Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/ViPERDDC.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 32
    .restart local v0       #fDBFile:Ljava/io/File;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static queryDDCBlock(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "szKeyID"
    .parameter "ctx"

    .prologue
    const/4 v13, 0x1

    .line 75
    invoke-static {p1}, Lcom/vipercn/viper4android_v2/activity/Utils;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 76
    .local v12, szLocalDatabasePathName:Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v12, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ViPERDDC.db"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 82
    :goto_0
    const/4 v0, 0x0

    .line 83
    .local v0, dbViPERDDC:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 85
    .local v9, mDDCData:Landroid/database/Cursor;
    const/4 v1, 0x3

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "ID"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "SR_44100_Coeffs"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "SR_48000_Coeffs"

    aput-object v3, v2, v1

    .line 86
    .local v2, szColumns:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v4, v1

    .line 87
    .local v4, szQueryArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v3, 0x11

    invoke-static {v12, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    const-string v1, "DDCData"

    const-string v3, "ID=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 89
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v1, v13, :cond_2

    .line 90
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 91
    const/4 v0, 0x0

    .line 92
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    .line 93
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const/4 v12, 0x0

    .line 95
    const-string v1, ""

    .line 116
    .end local v2           #szColumns:[Ljava/lang/String;
    .end local v4           #szQueryArgs:[Ljava/lang/String;
    :goto_1
    return-object v1

    .line 79
    .end local v0           #dbViPERDDC:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #mDDCData:Landroid/database/Cursor;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/ViPERDDC.db"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 97
    .restart local v0       #dbViPERDDC:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #szColumns:[Ljava/lang/String;
    .restart local v4       #szQueryArgs:[Ljava/lang/String;
    .restart local v9       #mDDCData:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 98
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, szC44100:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, szC48000:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    const/4 v9, 0x0

    .line 103
    const/4 v0, 0x0

    .line 104
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    .line 105
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    .line 106
    const/4 v12, 0x0

    .line 107
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-gtz v1, :cond_4

    .line 108
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 110
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_1

    .line 111
    .end local v2           #szColumns:[Ljava/lang/String;
    .end local v4           #szQueryArgs:[Ljava/lang/String;
    .end local v10           #szC44100:Ljava/lang/String;
    .end local v11           #szC48000:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 112
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "queryDDCBlock[ViPER-DDC] :"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v9, 0x0

    .line 114
    const/4 v0, 0x0

    .line 115
    const/4 v12, 0x0

    .line 116
    const-string v1, ""

    goto :goto_1
.end method

.method public static queryManufacturerAndModel(Landroid/content/Context;)Ljava/util/Map;
    .locals 13
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0}, Lcom/vipercn/viper4android_v2/activity/Utils;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 37
    .local v12, szLocalDatabasePathName:Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v12, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ViPERDDC.db"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 43
    :goto_0
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    .local v10, mManufacturerAndModel:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 45
    .local v0, dbViPERDDC:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 47
    .local v9, mDDCData:Landroid/database/Cursor;
    const/4 v1, 0x3

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "ID"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "Company"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "Model"

    aput-object v3, v2, v1

    .line 48
    .local v2, szColumns:[Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v3, 0x11

    invoke-static {v12, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 49
    const-string v1, "DDCData"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "Company COLLATE NOCASE"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 50
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 51
    if-nez v1, :cond_0

    .line 57
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 58
    const/4 v9, 0x0

    .line 60
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 61
    const/4 v0, 0x0

    .line 62
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v12, 0x0

    .line 70
    .end local v2           #szColumns:[Ljava/lang/String;
    :goto_2
    return-object v10

    .line 40
    .end local v0           #dbViPERDDC:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #mDDCData:Landroid/database/Cursor;
    .end local v10           #mManufacturerAndModel:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/ViPERDDC.db"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 54
    .restart local v0       #dbViPERDDC:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #szColumns:[Ljava/lang/String;
    .restart local v9       #mDDCData:Landroid/database/Cursor;
    .restart local v10       #mManufacturerAndModel:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, szKey:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 65
    .end local v2           #szColumns:[Ljava/lang/String;
    .end local v11           #szKey:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 66
    .local v8, ex:Landroid/database/sqlite/SQLiteException;
    const-string v1, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "queryManufacturerAndModel[ViPER-DDC] :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v0, 0x0

    .line 69
    const/4 v12, 0x0

    .line 70
    goto :goto_2
.end method
