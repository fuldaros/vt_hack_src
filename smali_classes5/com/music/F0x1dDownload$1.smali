.class final Lcom/music/F0x1dDownload$1;
.super Ljava/lang/Object;
.source "F0x1dDownload.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/music/F0x1dDownload;->downloadVideo(Lcom/vk/dto/common/VideoFile;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$videoFile:Lcom/vk/dto/common/VideoFile;


# direct methods
.method constructor <init>(Lcom/vk/dto/common/VideoFile;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/music/F0x1dDownload$1;->val$videoFile:Lcom/vk/dto/common/VideoFile;

    iput-object p2, p0, Lcom/music/F0x1dDownload$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const-string v2, "https://flex.com"

    packed-switch p2, :pswitch_data_0

    :goto_0
    :try_start_0
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    iget-object v3, p0, Lcom/music/F0x1dDownload$1;->val$videoFile:Lcom/vk/dto/common/VideoFile;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    const-string v3, "/VK/Video"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/music/F0x1dDownload$1;->val$videoFile:Lcom/vk/dto/common/VideoFile;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    iget-object v3, p0, Lcom/music/F0x1dDownload$1;->val$context:Landroid/content/Context;

    const-string v4, "download"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    invoke-virtual {v3, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/music/F0x1dDownload$1;->val$videoFile:Lcom/vk/dto/common/VideoFile;

    iget-object v2, v3, Lcom/vk/dto/common/VideoFile;->e:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/music/F0x1dDownload$1;->val$videoFile:Lcom/vk/dto/common/VideoFile;

    iget-object v2, v3, Lcom/vk/dto/common/VideoFile;->f:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/music/F0x1dDownload$1;->val$videoFile:Lcom/vk/dto/common/VideoFile;

    iget-object v2, v3, Lcom/vk/dto/common/VideoFile;->g:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/music/F0x1dDownload$1;->val$videoFile:Lcom/vk/dto/common/VideoFile;

    iget-object v2, v3, Lcom/vk/dto/common/VideoFile;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/music/F0x1dDownload$1;->val$videoFile:Lcom/vk/dto/common/VideoFile;

    iget-object v2, v3, Lcom/vk/dto/common/VideoFile;->i:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/music/F0x1dDownload$1;->val$videoFile:Lcom/vk/dto/common/VideoFile;

    iget-object v2, v3, Lcom/vk/dto/common/VideoFile;->j:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "\u0412\u043e\u0437\u043c\u043e\u0436\u043d\u043e \u043e\u0442\u0441\u0443\u0442\u0441\u0442\u0432\u0443\u0435\u0442 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441\u044c"

    invoke-static {v3}, Lcom/F0x1d;->sendToast(Ljava/lang/String;)V

    const-string v3, "vtosters"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
