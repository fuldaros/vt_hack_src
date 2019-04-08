.class Lcom/ui/OTAUtil$checkForUpdate;
.super Landroid/os/AsyncTask;
.source "OTAUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/OTAUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "checkForUpdate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private response:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ui/OTAUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ui/OTAUtil$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ui/OTAUtil$checkForUpdate;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ui/OTAUtil$checkForUpdate;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 44
    :try_start_0
    const-string v1, "https://raw.githubusercontent.com/fuldaros/vt_hack/master/vt_ota.json"

    invoke-static {v1}, Lcom/ui/OTAFragment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/OTAUtil$checkForUpdate;->response:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ui/OTAUtil$checkForUpdate$1;

    invoke-direct {v2, p0, v0}, Lcom/ui/OTAUtil$checkForUpdate$1;-><init>(Lcom/ui/OTAUtil$checkForUpdate;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ui/OTAUtil$checkForUpdate;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 61
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/ui/OTAUtil$checkForUpdate;->response:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "v"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ui/OTAUtil;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    const-string v4, "changelog"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ui/OTAUtil;->access$202(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/F0x1d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.vtosters.android"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 77
    .local v3, "ptext":[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .local v0, "appV":Ljava/lang/String;
    invoke-static {}, Lcom/ui/OTAUtil;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 84
    invoke-static {}, Lcom/ui/OTAUtil;->access$300()V

    .line 87
    .end local v0    # "appV":Ljava/lang/String;
    .end local v3    # "ptext":[B
    :cond_0
    :goto_1
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/ui/OTAUtil$checkForUpdate$2;

    invoke-direct {v5, p0, v1}, Lcom/ui/OTAUtil$checkForUpdate$2;-><init>(Lcom/ui/OTAUtil$checkForUpdate;Ljava/lang/Exception;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 79
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/ui/OTAUtil;->access$300()V

    goto :goto_1

    .line 64
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    goto :goto_2
.end method
