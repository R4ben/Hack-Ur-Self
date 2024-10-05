/// Generated file. Do not edit.
///
/// Original: assets/translations
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 86 (43 per locale)
///
/// Built on 2024-10-03 at 20:18 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	ptPt(languageCode: 'pt', countryCode: 'PT', build: _TranslationsPtPt.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _TranslationsGeneralEn general = _TranslationsGeneralEn._(_root);
	late final _TranslationsHomeEn home = _TranslationsHomeEn._(_root);
	late final _TranslationsLifeProjectsEn lifeProjects = _TranslationsLifeProjectsEn._(_root);
	late final _TranslationsAnualProjectsEn anualProjects = _TranslationsAnualProjectsEn._(_root);
	late final _TranslationsQuarterlyProjectsEn quarterlyProjects = _TranslationsQuarterlyProjectsEn._(_root);
	late final _TranslationsMonthlyProjectsEn monthlyProjects = _TranslationsMonthlyProjectsEn._(_root);
	late final _TranslationsWeeklyProjectsEn weeklyProjects = _TranslationsWeeklyProjectsEn._(_root);
	late final _TranslationsDailyPlansEn dailyPlans = _TranslationsDailyPlansEn._(_root);
	late final _TranslationsAboutEn about = _TranslationsAboutEn._(_root);
	late final _TranslationsSettingsEn settings = _TranslationsSettingsEn._(_root);
	late final _TranslationsFailureEn failure = _TranslationsFailureEn._(_root);
}

// Path: general
class _TranslationsGeneralEn {
	_TranslationsGeneralEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appTitle => 'Hack Ur Self';
}

// Path: home
class _TranslationsHomeEn {
	_TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Home';
	String get emptyHome => 'Ainda nao adicionou Nada';
}

// Path: lifeProjects
class _TranslationsLifeProjectsEn {
	_TranslationsLifeProjectsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Life Projects';
	late final _TranslationsLifeProjectsAddEn add = _TranslationsLifeProjectsAddEn._(_root);
	late final _TranslationsLifeProjectsSortbyEn sortby = _TranslationsLifeProjectsSortbyEn._(_root);
	late final _TranslationsLifeProjectsSaveEn save = _TranslationsLifeProjectsSaveEn._(_root);
	late final _TranslationsLifeProjectsDeleteEn delete = _TranslationsLifeProjectsDeleteEn._(_root);
	late final _TranslationsLifeProjectsDetailsFormEn detailsForm = _TranslationsLifeProjectsDetailsFormEn._(_root);
}

// Path: anualProjects
class _TranslationsAnualProjectsEn {
	_TranslationsAnualProjectsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Annual Projects';
}

// Path: quarterlyProjects
class _TranslationsQuarterlyProjectsEn {
	_TranslationsQuarterlyProjectsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Quarterly Projects';
}

// Path: monthlyProjects
class _TranslationsMonthlyProjectsEn {
	_TranslationsMonthlyProjectsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Monthly Projects';
}

// Path: weeklyProjects
class _TranslationsWeeklyProjectsEn {
	_TranslationsWeeklyProjectsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Weekly Projects';
}

// Path: dailyPlans
class _TranslationsDailyPlansEn {
	_TranslationsDailyPlansEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Daily Plans';
}

// Path: about
class _TranslationsAboutEn {
	_TranslationsAboutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'About';
}

// Path: settings
class _TranslationsSettingsEn {
	_TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Settings';
	late final _TranslationsSettingsGeneralEn general = _TranslationsSettingsGeneralEn._(_root);
}

// Path: failure
class _TranslationsFailureEn {
	_TranslationsFailureEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Error';
	late final _TranslationsFailureLifeProjectsEn lifeProjects = _TranslationsFailureLifeProjectsEn._(_root);
}

// Path: lifeProjects.add
class _TranslationsLifeProjectsAddEn {
	_TranslationsLifeProjectsAddEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonText => 'New Project';
	String get shortBtnText => 'New Project';
	String get addingProjectMgs => 'Adding life project';
	String get addingProjectName => 'Project Name';
	String get addingProjectDesc => 'Add a description';
	String get failureMsg => 'Falha ao adicionar projeto';
}

// Path: lifeProjects.sortby
class _TranslationsLifeProjectsSortbyEn {
	_TranslationsLifeProjectsSortbyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get lastUpdate => 'recently Updated';
	String get name => 'Alfabetically';
}

// Path: lifeProjects.save
class _TranslationsLifeProjectsSaveEn {
	_TranslationsLifeProjectsSaveEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get successMsg => 'Projeto salvo com sucesso.';
	String get buttonText => 'Salvar';
	String get failureMsg => 'Falha ao salvar Projeto.';
}

// Path: lifeProjects.delete
class _TranslationsLifeProjectsDeleteEn {
	_TranslationsLifeProjectsDeleteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonText => 'Save';
	String get successMsg => 'Project Saved Successfully';
	String get failureMsg => 'Failed to save project';
}

// Path: lifeProjects.detailsForm
class _TranslationsLifeProjectsDetailsFormEn {
	_TranslationsLifeProjectsDetailsFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get nameLabel => 'Name';
	String get nameHint => 'Name of project';
	String get emptyNameMsg => 'Name Is Required';
	String get descriptionLabel => 'Descricao';
	String get descriptionHint => 'Escreva uma descricao';
}

// Path: settings.general
class _TranslationsSettingsGeneralEn {
	_TranslationsSettingsGeneralEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sectionTitle => 'General';
	String get themeMode => 'Theme Mode';
	late final _TranslationsSettingsGeneralThemeModesEn themeModes = _TranslationsSettingsGeneralThemeModesEn._(_root);
	String get locale => 'Linguage';
	String get region => 'Region';
	late final _TranslationsSettingsGeneralRegionsEn regions = _TranslationsSettingsGeneralRegionsEn._(_root);
}

// Path: failure.lifeProjects
class _TranslationsFailureLifeProjectsEn {
	_TranslationsFailureLifeProjectsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Error';
	String get notFound => 'Life Project not Found';
}

// Path: settings.general.themeModes
class _TranslationsSettingsGeneralThemeModesEn {
	_TranslationsSettingsGeneralThemeModesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get system => 'Follow System Theme';
	String get light => 'Light Mode';
	String get dark => 'Dark Mode';
	String get black => 'Black Mode';
}

// Path: settings.general.regions
class _TranslationsSettingsGeneralRegionsEn {
	_TranslationsSettingsGeneralRegionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pt => 'Portugual';
	String get other => 'Outro';
}

// Path: <root>
class _TranslationsPtPt extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsPtPt.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ptPt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt-PT>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _TranslationsPtPt _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsGeneralPtPt general = _TranslationsGeneralPtPt._(_root);
	@override late final _TranslationsHomePtPt home = _TranslationsHomePtPt._(_root);
	@override late final _TranslationsLifeProjectsPtPt lifeProjects = _TranslationsLifeProjectsPtPt._(_root);
	@override late final _TranslationsAnualProjectsPtPt anualProjects = _TranslationsAnualProjectsPtPt._(_root);
	@override late final _TranslationsQuarterlyProjectsPtPt quarterlyProjects = _TranslationsQuarterlyProjectsPtPt._(_root);
	@override late final _TranslationsMonthlyProjectsPtPt monthlyProjects = _TranslationsMonthlyProjectsPtPt._(_root);
	@override late final _TranslationsWeeklyProjectsPtPt weeklyProjects = _TranslationsWeeklyProjectsPtPt._(_root);
	@override late final _TranslationsDailyPlansPtPt dailyPlans = _TranslationsDailyPlansPtPt._(_root);
	@override late final _TranslationsAboutPtPt about = _TranslationsAboutPtPt._(_root);
	@override late final _TranslationsSettingsPtPt settings = _TranslationsSettingsPtPt._(_root);
	@override late final _TranslationsFailurePtPt failure = _TranslationsFailurePtPt._(_root);
}

// Path: general
class _TranslationsGeneralPtPt extends _TranslationsGeneralEn {
	_TranslationsGeneralPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Hack Ur Self';
}

// Path: home
class _TranslationsHomePtPt extends _TranslationsHomeEn {
	_TranslationsHomePtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Home';
	@override String get emptyHome => 'Ainda nao adicionou Nada';
}

// Path: lifeProjects
class _TranslationsLifeProjectsPtPt extends _TranslationsLifeProjectsEn {
	_TranslationsLifeProjectsPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Projetos de Vida';
	@override late final _TranslationsLifeProjectsAddPtPt add = _TranslationsLifeProjectsAddPtPt._(_root);
	@override late final _TranslationsLifeProjectsSortbyPtPt sortby = _TranslationsLifeProjectsSortbyPtPt._(_root);
	@override late final _TranslationsLifeProjectsSavePtPt save = _TranslationsLifeProjectsSavePtPt._(_root);
	@override late final _TranslationsLifeProjectsDeletePtPt delete = _TranslationsLifeProjectsDeletePtPt._(_root);
	@override late final _TranslationsLifeProjectsDetailsFormPtPt detailsForm = _TranslationsLifeProjectsDetailsFormPtPt._(_root);
}

// Path: anualProjects
class _TranslationsAnualProjectsPtPt extends _TranslationsAnualProjectsEn {
	_TranslationsAnualProjectsPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Projetos Anuais';
}

// Path: quarterlyProjects
class _TranslationsQuarterlyProjectsPtPt extends _TranslationsQuarterlyProjectsEn {
	_TranslationsQuarterlyProjectsPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Projetos Trimestrais';
}

// Path: monthlyProjects
class _TranslationsMonthlyProjectsPtPt extends _TranslationsMonthlyProjectsEn {
	_TranslationsMonthlyProjectsPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Projetos Mesais';
}

// Path: weeklyProjects
class _TranslationsWeeklyProjectsPtPt extends _TranslationsWeeklyProjectsEn {
	_TranslationsWeeklyProjectsPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Projetos semanais';
}

// Path: dailyPlans
class _TranslationsDailyPlansPtPt extends _TranslationsDailyPlansEn {
	_TranslationsDailyPlansPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Tarefas dirios';
}

// Path: about
class _TranslationsAboutPtPt extends _TranslationsAboutEn {
	_TranslationsAboutPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Sobre';
}

// Path: settings
class _TranslationsSettingsPtPt extends _TranslationsSettingsEn {
	_TranslationsSettingsPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Configuracoes';
	@override late final _TranslationsSettingsGeneralPtPt general = _TranslationsSettingsGeneralPtPt._(_root);
}

// Path: failure
class _TranslationsFailurePtPt extends _TranslationsFailureEn {
	_TranslationsFailurePtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Erro Inesperado';
	@override late final _TranslationsFailureLifeProjectsPtPt lifeProjects = _TranslationsFailureLifeProjectsPtPt._(_root);
}

// Path: lifeProjects.add
class _TranslationsLifeProjectsAddPtPt extends _TranslationsLifeProjectsAddEn {
	_TranslationsLifeProjectsAddPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Novo Projeto';
	@override String get shortBtnText => 'Novo Projeto';
	@override String get addingProjectMgs => 'Adicionando projeto de vida';
	@override String get addingProjectName => 'Nome projeto';
	@override String get addingProjectDesc => 'Adicione uma descricao';
	@override String get failureMsg => 'Falha ao adicionar projeto';
}

// Path: lifeProjects.sortby
class _TranslationsLifeProjectsSortbyPtPt extends _TranslationsLifeProjectsSortbyEn {
	_TranslationsLifeProjectsSortbyPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get lastUpdate => 'Atualizado recentemente';
	@override String get name => 'Alfabeticamente';
}

// Path: lifeProjects.save
class _TranslationsLifeProjectsSavePtPt extends _TranslationsLifeProjectsSaveEn {
	_TranslationsLifeProjectsSavePtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get successMsg => 'Projeto salvo com sucesso.';
	@override String get buttonText => 'Salvar';
	@override String get failureMsg => 'Falha ao salvar Projeto.';
}

// Path: lifeProjects.delete
class _TranslationsLifeProjectsDeletePtPt extends _TranslationsLifeProjectsDeleteEn {
	_TranslationsLifeProjectsDeletePtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Deletar';
	@override String get successMsg => 'Projeto deletado com sucesso';
	@override String get failureMsg => 'Falha ao deletar projeto';
}

// Path: lifeProjects.detailsForm
class _TranslationsLifeProjectsDetailsFormPtPt extends _TranslationsLifeProjectsDetailsFormEn {
	_TranslationsLifeProjectsDetailsFormPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get nameLabel => 'Nome';
	@override String get nameHint => 'Nome do projeto';
	@override String get descriptionLabel => 'Descricao';
	@override String get descriptionHint => 'Escreva uma descricao';
	@override String get emptyNameMsg => 'Nome é obrigatório';
}

// Path: settings.general
class _TranslationsSettingsGeneralPtPt extends _TranslationsSettingsGeneralEn {
	_TranslationsSettingsGeneralPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Geral';
	@override String get themeMode => 'Modo de Tema';
	@override late final _TranslationsSettingsGeneralThemeModesPtPt themeModes = _TranslationsSettingsGeneralThemeModesPtPt._(_root);
	@override String get locale => 'Linguagem';
	@override String get region => 'Regiao';
	@override late final _TranslationsSettingsGeneralRegionsPtPt regions = _TranslationsSettingsGeneralRegionsPtPt._(_root);
}

// Path: failure.lifeProjects
class _TranslationsFailureLifeProjectsPtPt extends _TranslationsFailureLifeProjectsEn {
	_TranslationsFailureLifeProjectsPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Erro Inesperado';
	@override String get notFound => 'Projeto de Vida Nao Encontrado';
}

// Path: settings.general.themeModes
class _TranslationsSettingsGeneralThemeModesPtPt extends _TranslationsSettingsGeneralThemeModesEn {
	_TranslationsSettingsGeneralThemeModesPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get system => 'Seguir o Theme do Sistema';
	@override String get light => 'Modo Claro';
	@override String get dark => 'Modo Escuro';
	@override String get black => 'Modo Preto';
}

// Path: settings.general.regions
class _TranslationsSettingsGeneralRegionsPtPt extends _TranslationsSettingsGeneralRegionsEn {
	_TranslationsSettingsGeneralRegionsPtPt._(_TranslationsPtPt root) : this._root = root, super._(root);

	@override final _TranslationsPtPt _root; // ignore: unused_field

	// Translations
	@override String get pt => 'Portugual';
	@override String get other => 'Outro';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appTitle': return 'Hack Ur Self';
			case 'home.pageTitle': return 'Home';
			case 'home.emptyHome': return 'Ainda nao adicionou Nada';
			case 'lifeProjects.pageTitle': return 'Life Projects';
			case 'lifeProjects.add.buttonText': return 'New Project';
			case 'lifeProjects.add.shortBtnText': return 'New Project';
			case 'lifeProjects.add.addingProjectMgs': return 'Adding life project';
			case 'lifeProjects.add.addingProjectName': return 'Project Name';
			case 'lifeProjects.add.addingProjectDesc': return 'Add a description';
			case 'lifeProjects.add.failureMsg': return 'Falha ao adicionar projeto';
			case 'lifeProjects.sortby.lastUpdate': return 'recently Updated';
			case 'lifeProjects.sortby.name': return 'Alfabetically';
			case 'lifeProjects.save.successMsg': return 'Projeto salvo com sucesso.';
			case 'lifeProjects.save.buttonText': return 'Salvar';
			case 'lifeProjects.save.failureMsg': return 'Falha ao salvar Projeto.';
			case 'lifeProjects.delete.buttonText': return 'Save';
			case 'lifeProjects.delete.successMsg': return 'Project Saved Successfully';
			case 'lifeProjects.delete.failureMsg': return 'Failed to save project';
			case 'lifeProjects.detailsForm.nameLabel': return 'Name';
			case 'lifeProjects.detailsForm.nameHint': return 'Name of project';
			case 'lifeProjects.detailsForm.emptyNameMsg': return 'Name Is Required';
			case 'lifeProjects.detailsForm.descriptionLabel': return 'Descricao';
			case 'lifeProjects.detailsForm.descriptionHint': return 'Escreva uma descricao';
			case 'anualProjects.pageTitle': return 'Annual Projects';
			case 'quarterlyProjects.pageTitle': return 'Quarterly Projects';
			case 'monthlyProjects.pageTitle': return 'Monthly Projects';
			case 'weeklyProjects.pageTitle': return 'Weekly Projects';
			case 'dailyPlans.pageTitle': return 'Daily Plans';
			case 'about.pageTitle': return 'About';
			case 'settings.pageTitle': return 'Settings';
			case 'settings.general.sectionTitle': return 'General';
			case 'settings.general.themeMode': return 'Theme Mode';
			case 'settings.general.themeModes.system': return 'Follow System Theme';
			case 'settings.general.themeModes.light': return 'Light Mode';
			case 'settings.general.themeModes.dark': return 'Dark Mode';
			case 'settings.general.themeModes.black': return 'Black Mode';
			case 'settings.general.locale': return 'Linguage';
			case 'settings.general.region': return 'Region';
			case 'settings.general.regions.pt': return 'Portugual';
			case 'settings.general.regions.other': return 'Outro';
			case 'failure.unexpected': return 'Unexpected Error';
			case 'failure.lifeProjects.unexpected': return 'Unexpected Error';
			case 'failure.lifeProjects.notFound': return 'Life Project not Found';
			default: return null;
		}
	}
}

extension on _TranslationsPtPt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appTitle': return 'Hack Ur Self';
			case 'home.pageTitle': return 'Home';
			case 'home.emptyHome': return 'Ainda nao adicionou Nada';
			case 'lifeProjects.pageTitle': return 'Projetos de Vida';
			case 'lifeProjects.add.buttonText': return 'Novo Projeto';
			case 'lifeProjects.add.shortBtnText': return 'Novo Projeto';
			case 'lifeProjects.add.addingProjectMgs': return 'Adicionando projeto de vida';
			case 'lifeProjects.add.addingProjectName': return 'Nome projeto';
			case 'lifeProjects.add.addingProjectDesc': return 'Adicione uma descricao';
			case 'lifeProjects.add.failureMsg': return 'Falha ao adicionar projeto';
			case 'lifeProjects.sortby.lastUpdate': return 'Atualizado recentemente';
			case 'lifeProjects.sortby.name': return 'Alfabeticamente';
			case 'lifeProjects.save.successMsg': return 'Projeto salvo com sucesso.';
			case 'lifeProjects.save.buttonText': return 'Salvar';
			case 'lifeProjects.save.failureMsg': return 'Falha ao salvar Projeto.';
			case 'lifeProjects.delete.buttonText': return 'Deletar';
			case 'lifeProjects.delete.successMsg': return 'Projeto deletado com sucesso';
			case 'lifeProjects.delete.failureMsg': return 'Falha ao deletar projeto';
			case 'lifeProjects.detailsForm.nameLabel': return 'Nome';
			case 'lifeProjects.detailsForm.nameHint': return 'Nome do projeto';
			case 'lifeProjects.detailsForm.descriptionLabel': return 'Descricao';
			case 'lifeProjects.detailsForm.descriptionHint': return 'Escreva uma descricao';
			case 'lifeProjects.detailsForm.emptyNameMsg': return 'Nome é obrigatório';
			case 'anualProjects.pageTitle': return 'Projetos Anuais';
			case 'quarterlyProjects.pageTitle': return 'Projetos Trimestrais';
			case 'monthlyProjects.pageTitle': return 'Projetos Mesais';
			case 'weeklyProjects.pageTitle': return 'Projetos semanais';
			case 'dailyPlans.pageTitle': return 'Tarefas dirios';
			case 'about.pageTitle': return 'Sobre';
			case 'settings.pageTitle': return 'Configuracoes';
			case 'settings.general.sectionTitle': return 'Geral';
			case 'settings.general.themeMode': return 'Modo de Tema';
			case 'settings.general.themeModes.system': return 'Seguir o Theme do Sistema';
			case 'settings.general.themeModes.light': return 'Modo Claro';
			case 'settings.general.themeModes.dark': return 'Modo Escuro';
			case 'settings.general.themeModes.black': return 'Modo Preto';
			case 'settings.general.locale': return 'Linguagem';
			case 'settings.general.region': return 'Regiao';
			case 'settings.general.regions.pt': return 'Portugual';
			case 'settings.general.regions.other': return 'Outro';
			case 'failure.unexpected': return 'Erro Inesperado';
			case 'failure.lifeProjects.unexpected': return 'Erro Inesperado';
			case 'failure.lifeProjects.notFound': return 'Projeto de Vida Nao Encontrado';
			default: return null;
		}
	}
}
