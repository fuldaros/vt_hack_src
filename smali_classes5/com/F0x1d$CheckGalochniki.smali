.class Lcom/F0x1d$CheckGalochniki;
.super Landroid/os/AsyncTask;
.source "F0x1d.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/F0x1d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckGalochniki"
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/F0x1d$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/F0x1d$1;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/F0x1d$CheckGalochniki;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/F0x1d$CheckGalochniki;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 178
    const-string v8, "https://lbogd.github.io/galo4ki.json"

    .line 181
    .local v8, "url":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 182
    .local v6, "obj":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 184
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 186
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 188
    .local v3, "in":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v7, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "inputLine":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 191
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "inputLine":Ljava/lang/String;
    .end local v6    # "obj":Ljava/net/URL;
    .end local v7    # "response":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Lcom/F0x1d$CheckGalochniki$1;

    invoke-direct {v10, p0, v1}, Lcom/F0x1d$CheckGalochniki$1;-><init>(Lcom/F0x1d$CheckGalochniki;Ljava/lang/Exception;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v9, 0x0

    return-object v9

    .line 193
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "inputLine":Ljava/lang/String;
    .restart local v6    # "obj":Ljava/net/URL;
    .restart local v7    # "response":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 195
    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 196
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 197
    invoke-static {}, Lcom/F0x1d;->access$100()Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
