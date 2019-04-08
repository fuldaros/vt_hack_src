.class Lcom/ui/OTAFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "OTAFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/OTAFragment;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/OTAFragment;


# direct methods
.method constructor <init>(Lcom/ui/OTAFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ui/OTAFragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ui/OTAFragment$2;->this$0:Lcom/ui/OTAFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "action":Ljava/lang/String;
    const-string v12, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 70
    const-string v12, "extra_download_id"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 71
    .local v6, "downloadId":J
    new-instance v10, Landroid/app/DownloadManager$Query;

    invoke-direct {v10}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 72
    .local v10, "query":Landroid/app/DownloadManager$Query;
    const/4 v12, 0x1

    new-array v12, v12, [J

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ui/OTAFragment$2;->this$0:Lcom/ui/OTAFragment;

    invoke-static {v14}, Lcom/ui/OTAFragment;->access$000(Lcom/ui/OTAFragment;)J

    move-result-wide v14

    aput-wide v14, v12, v13

    invoke-virtual {v10, v12}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 73
    const-string v12, "download"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/DownloadManager;

    .line 74
    .local v5, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {v5, v10}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    .line 75
    .local v3, "c":Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 76
    const-string v12, "status"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 77
    .local v4, "columnIndex":I
    const/16 v12, 0x8

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v12, v13, :cond_1

    .line 78
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x18

    if-lt v12, v13, :cond_0

    .line 80
    :try_start_0
    const-class v12, Landroid/os/StrictMode;

    const-string v13, "disableDeathOnFileUriExposure"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 81
    .local v9, "m":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v9, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v9    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const-string v12, "local_uri"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 88
    .local v11, "uriString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ui/OTAFragment$2;->this$0:Lcom/ui/OTAFragment;

    invoke-static {v12, v11}, Lcom/ui/OTAFragment;->access$100(Lcom/ui/OTAFragment;Ljava/lang/String;)V

    .line 92
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "columnIndex":I
    .end local v5    # "downloadManager":Landroid/app/DownloadManager;
    .end local v6    # "downloadId":J
    .end local v10    # "query":Landroid/app/DownloadManager$Query;
    .end local v11    # "uriString":Ljava/lang/String;
    :cond_1
    return-void

    .line 82
    .restart local v3    # "c":Landroid/database/Cursor;
    .restart local v4    # "columnIndex":I
    .restart local v5    # "downloadManager":Landroid/app/DownloadManager;
    .restart local v6    # "downloadId":J
    .restart local v10    # "query":Landroid/app/DownloadManager$Query;
    :catch_0
    move-exception v8

    .line 83
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
