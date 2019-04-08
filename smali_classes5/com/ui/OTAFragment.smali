.class public Lcom/ui/OTAFragment;
.super Lcom/vtosters/android/fragments/r;
.source "OTAFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/OTAFragment$checkForUpdate;
    }
.end annotation


# static fields
.field public static context:Landroid/content/Context;


# instance fields
.field private changelog:Ljava/lang/String;

.field private check:Landroid/support/v7/preference/Preference;

.field private enq:J

.field private link:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vtosters/android/fragments/r;-><init>()V

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ui/OTAFragment;->enq:J

    return-void
.end method

.method static synthetic access$000(Lcom/ui/OTAFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/ui/OTAFragment;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/ui/OTAFragment;->enq:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/ui/OTAFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ui/OTAFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/ui/OTAFragment;->openFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ui/OTAFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ui/OTAFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ui/OTAFragment;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ui/OTAFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ui/OTAFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ui/OTAFragment;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ui/OTAFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ui/OTAFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ui/OTAFragment;->link:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ui/OTAFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ui/OTAFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ui/OTAFragment;->link:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/ui/OTAFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ui/OTAFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ui/OTAFragment;->changelog:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ui/OTAFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/ui/OTAFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ui/OTAFragment;->getDialog()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 182
    .local v3, "obj":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 184
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 188
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v4, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "inputLine":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 195
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getDialog()V
    .locals 3

    .prologue
    .line 162
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ui/OTAFragment;->aC()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0421\u043a\u0430\u0447\u0430\u0442\u044c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/OTAFragment;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u043e\u0432\u043e\u0435: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/OTAFragment;->changelog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    const-string v1, "\u0421\u043a\u0430\u0447\u0430\u0442\u044c"

    new-instance v2, Lcom/ui/OTAFragment$3;

    invoke-direct {v2, p0}, Lcom/ui/OTAFragment$3;-><init>(Lcom/ui/OTAFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 173
    return-void
.end method

.method private openFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "install":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Lcom/ui/OTAFragment;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected at()I
    .locals 1

    .prologue
    .line 177
    const v0, 0x7f1110ec

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/vtosters/android/fragments/r;->b(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f140010

    invoke-virtual {p0, v1}, Lcom/ui/OTAFragment;->a(I)V

    .line 54
    invoke-virtual {p0}, Lcom/ui/OTAFragment;->aC()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/ui/OTAFragment;->context:Landroid/content/Context;

    .line 56
    const-string v1, "check"

    invoke-virtual {p0, v1}, Lcom/ui/OTAFragment;->a(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/OTAFragment;->check:Landroid/support/v7/preference/Preference;

    .line 57
    iget-object v1, p0, Lcom/ui/OTAFragment;->check:Landroid/support/v7/preference/Preference;

    new-instance v2, Lcom/ui/OTAFragment$1;

    invoke-direct {v2, p0}, Lcom/ui/OTAFragment$1;-><init>(Lcom/ui/OTAFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->a(Landroid/support/v7/preference/Preference$c;)V

    .line 65
    new-instance v0, Lcom/ui/OTAFragment$2;

    invoke-direct {v0, p0}, Lcom/ui/OTAFragment$2;-><init>(Lcom/ui/OTAFragment;)V

    .line 94
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p0}, Lcom/ui/OTAFragment;->aC()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "c"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 107
    .local v1, "request":Landroid/app/DownloadManager$Request;
    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 108
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 109
    const-string v2, "download"

    invoke-virtual {p3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 110
    .local v0, "manager":Landroid/app/DownloadManager;
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ui/OTAFragment;->enq:J

    .line 111
    return-void
.end method
