.class public Lcom/android/settings/DataUsageSummary$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2058
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 2062
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2079
    :goto_0
    return-void

    .line 2064
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2065
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "template"

    #getter for: Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$3500(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2074
    new-instance v1, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;-><init>()V

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$3902(Lcom/android/settings/DataUsageSummary$LimitEditorFragment;)Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    .line 2075
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3900()Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2076
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3900()Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2077
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3900()Lcom/android/settings/DataUsageSummary$LimitEditorFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "limitEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 2083
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 2084
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/settings/DataUsageSummary;

    .line 2085
    .local v5, target:Lcom/android/settings/DataUsageSummary;
    #getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {v5}, Lcom/android/settings/DataUsageSummary;->access$3600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v3

    .line 2087
    .local v3, editor:Lcom/android/settings/net/NetworkPolicyEditor;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2088
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 2090
    .local v8, dialogInflater:Landroid/view/LayoutInflater;
    const v0, 0x7f04002c

    const/4 v1, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v0, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 2091
    .local v11, view:Landroid/view/View;
    const v0, 0x7f080049

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 2093
    .local v2, bytesPicker:Landroid/widget/NumberPicker;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 2094
    .local v4, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v4}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v12

    .line 2095
    .local v12, warningBytes:J
    invoke-virtual {v3, v4}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v9

    .line 2097
    .local v9, limitBytes:J
    const v0, 0x7fffffff

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2098
    const-wide/16 v0, -0x1

    cmp-long v0, v12, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-lez v0, :cond_0

    .line 2099
    const-wide/32 v0, 0x100000

    div-long v0, v12, v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2103
    :goto_0
    const-wide/32 v0, 0x100000

    div-long v0, v9, v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2104
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2106
    const v0, 0x7f0b0633

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2107
    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2109
    const v14, 0x7f0b0631

    new-instance v0, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$LimitEditorFragment;Landroid/widget/NumberPicker;Lcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V

    invoke-virtual {v6, v14, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2122
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 2101
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    goto :goto_0
.end method
