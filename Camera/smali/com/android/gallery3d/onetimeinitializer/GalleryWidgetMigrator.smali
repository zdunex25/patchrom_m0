.class public Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;
.super Ljava/lang/Object;
.source "GalleryWidgetMigrator.java"


# static fields
.field private static final NEW_EXT_PATH:Ljava/lang/String;

.field private static final RELATIVE_PATH_START:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->NEW_EXT_PATH:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->NEW_EXT_PATH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->RELATIVE_PATH_START:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static migrateGalleryWidgets(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 57
    const-string v3, "/mnt/sdcard"

    sget-object v4, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->NEW_EXT_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "gallery_widget_migration_done"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    .local v0, isDone:Z
    if-nez v0, :cond_0

    .line 65
    :try_start_0
    invoke-static {p0}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->migrateGalleryWidgetsInternal(Landroid/content/Context;)V

    .line 66
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "gallery_widget_migration_done"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 69
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "GalleryWidgetMigrator"

    const-string v4, "migrateGalleryWidgets"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static migrateGalleryWidgetsInternal(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/app/GalleryApp;

    .line 75
    .local v4, galleryApp:Lcom/android/gallery3d/app/GalleryApp;
    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v7

    .line 76
    .local v7, manager:Lcom/android/gallery3d/data/DataManager;
    new-instance v1, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, dbHelper:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->getEntries(I)Ljava/util/List;

    move-result-object v2

    .line 80
    .local v2, entries:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    if-eqz v2, :cond_2

    .line 81
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    .local v6, localEntries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    .line 83
    .local v3, entry:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    iget-object v10, v3, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v9

    .line 84
    .local v9, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v7, v9}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaSet;

    .line 85
    .local v8, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    instance-of v10, v8, Lcom/android/gallery3d/data/LocalAlbum;

    if-eqz v10, :cond_0

    .line 86
    invoke-virtual {v9}, Lcom/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, bucketId:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    .end local v0           #bucketId:I
    .end local v3           #entry:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    .end local v8           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v9           #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v6, v1}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->migrateLocalEntries(Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;)V

    .line 92
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #localEntries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    :cond_2
    return-void
.end method

.method private static migrateLocalEntries(Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;)V
    .locals 3
    .parameter
    .parameter "dbHelper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;",
            ">;",
            "Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 99
    .local v0, root:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "DCIM"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p0, p1}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->updatePath(Ljava/io/File;Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;)V

    .line 102
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p0, p1}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->updatePath(Ljava/io/File;Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;)V

    .line 103
    :cond_0
    return-void
.end method

.method private static updatePath(Ljava/io/File;Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;)V
    .locals 16
    .parameter "root"
    .parameter
    .parameter "dbHelper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;",
            ">;",
            "Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, entries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 108
    .local v5, files:[Ljava/io/File;
    if-eqz v5, :cond_2

    .line 109
    move-object v2, v5

    .local v2, arr$:[Ljava/io/File;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v4, v2, v6

    .line 110
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 111
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, path:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/mnt/sdcard"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->RELATIVE_PATH_START:I

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, oldPath:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v10

    .line 114
    .local v10, oldBucketId:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;

    .line 115
    .local v3, entry:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    if-eqz v3, :cond_0

    .line 116
    invoke-static {v12}, Lcom/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v9

    .line 117
    .local v9, newBucketId:I
    iget-object v13, v3, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/gallery3d/data/Path;->getParent()Lcom/android/gallery3d/data/Path;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, newAlbumPath:Ljava/lang/String;
    const-string v13, "GalleryWidgetMigrator"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "migrate from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v3, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object v8, v3, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;->albumPath:Ljava/lang/String;

    .line 123
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;->updateEntry(Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;)V

    .line 125
    .end local v8           #newAlbumPath:Ljava/lang/String;
    .end local v9           #newBucketId:I
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v4, v0, v1}, Lcom/android/gallery3d/onetimeinitializer/GalleryWidgetMigrator;->updatePath(Ljava/io/File;Ljava/util/HashMap;Lcom/android/gallery3d/gadget/WidgetDatabaseHelper;)V

    .line 109
    .end local v3           #entry:Lcom/android/gallery3d/gadget/WidgetDatabaseHelper$Entry;
    .end local v10           #oldBucketId:I
    .end local v11           #oldPath:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 129
    .end local v2           #arr$:[Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_2
    return-void
.end method
