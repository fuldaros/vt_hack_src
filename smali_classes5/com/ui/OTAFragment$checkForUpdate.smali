.class Lcom/ui/OTAFragment$checkForUpdate;
.super Landroid/os/AsyncTask;
.source "OTAFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/OTAFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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

.field final synthetic this$0:Lcom/ui/OTAFragment;


# direct methods
.method constructor <init>(Lcom/ui/OTAFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ui/OTAFragment;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ui/OTAFragment$checkForUpdate;->this$0:Lcom/ui/OTAFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ui/OTAFragment$checkForUpdate;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 120
    :try_start_0
    const-string v1, "https://raw.githubusercontent.com/fuldaros/vt_hack/master/vt_ota.json"

    invoke-static {v1}, Lcom/ui/OTAFragment;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/OTAFragment$checkForUpdate;->response:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/ui/OTAFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 113
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ui/OTAFragment$checkForUpdate;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 9
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    .line 129
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 132
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/ui/OTAFragment$checkForUpdate;->response:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    .local v3, "jsonObject":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/ui/OTAFragment$checkForUpdate;->this$0:Lcom/ui/OTAFragment;

    const-string v6, "v"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ui/OTAFragment;->access$202(Lcom/ui/OTAFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    iget-object v5, p0, Lcom/ui/OTAFragment$checkForUpdate;->this$0:Lcom/ui/OTAFragment;

    const-string v6, "link"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ui/OTAFragment;->access$302(Lcom/ui/OTAFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-object v5, p0, Lcom/ui/OTAFragment$checkForUpdate;->this$0:Lcom/ui/OTAFragment;

    const-string v6, "changelog"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ui/OTAFragment;->access$402(Lcom/ui/OTAFragment;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    const-string v0, ""

    .line 143
    .local v0, "appV":Ljava/lang/String;
    :try_start_1
    sget-object v5, Lcom/ui/OTAFragment;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.vtosters.android"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 144
    .local v4, "ptext":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v0    # "appV":Ljava/lang/String;
    .local v1, "appV":Ljava/lang/String;
    move-object v0, v1

    .line 152
    .end local v1    # "appV":Ljava/lang/String;
    .end local v4    # "ptext":[B
    .restart local v0    # "appV":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/ui/OTAFragment$checkForUpdate;->this$0:Lcom/ui/OTAFragment;

    invoke-static {v5}, Lcom/ui/OTAFragment;->access$200(Lcom/ui/OTAFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    sget-object v5, Lcom/ui/OTAFragment;->context:Landroid/content/Context;

    const-string v6, "\u041e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0439 \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u043e!"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 158
    :goto_2
    return-void

    .line 136
    .end local v0    # "appV":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    sget-object v5, Lcom/ui/OTAFragment;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 145
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "appV":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 146
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 147
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v2

    .line 148
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v5, p0, Lcom/ui/OTAFragment$checkForUpdate;->this$0:Lcom/ui/OTAFragment;

    invoke-static {v5}, Lcom/ui/OTAFragment;->access$500(Lcom/ui/OTAFragment;)V

    goto :goto_2

    .line 155
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v5, p0, Lcom/ui/OTAFragment$checkForUpdate;->this$0:Lcom/ui/OTAFragment;

    invoke-static {v5}, Lcom/ui/OTAFragment;->access$500(Lcom/ui/OTAFragment;)V

    goto :goto_2

    .line 136
    .end local v0    # "appV":Ljava/lang/String;
    :catch_3
    move-exception v2

    goto :goto_3
.end method
