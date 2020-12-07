# typed: strong

module TZInfo
end

class TZInfo::AmbiguousTime < ::StandardError
end

class TZInfo::Country
  include(::Comparable)

  def <=>(c); end
  def _dump(limit); end
  def code; end
  def eql?(c); end
  def hash; end
  def inspect; end
  def name; end
  def to_s; end
  def zone_identifiers; end
  def zone_info; end
  def zone_names; end
  def zones; end

  private

  def setup(info); end

  class << self
    def _load(data); end
    def all; end
    def all_codes; end
    def data_source; end
    def get(identifier); end
    def init_countries; end
    def new(identifier); end
  end
end

module TZInfo::CountryIndexDefinition
  mixes_in_class_methods(::TZInfo::CountryIndexDefinition::ClassMethods)

  class << self
    def append_features(base); end
  end
end

module TZInfo::CountryIndexDefinition::ClassMethods
  def countries; end
  def country(code, name, &block); end
end

class TZInfo::CountryInfo
  def initialize(code, name); end

  def code; end
  def inspect; end
  def name; end
  def zone_identifiers; end
  def zones; end

  private

  def raise_not_implemented(method_name); end
end

class TZInfo::CountryTimezone
  def initialize(identifier, latitude_numerator, latitude_denominator, longitude_numerator, longitude_denominator, description = T.unsafe(nil)); end

  def ==(ct); end
  def description; end
  def description_or_friendly_identifier; end
  def eql?(ct); end
  def hash; end
  def identifier; end
  def inspect; end
  def latitude; end
  def longitude; end
  def timezone; end

  class << self
    def new(identifier, latitude, longitude, description = T.unsafe(nil)); end
    def new!(*_); end
  end
end

class TZInfo::DataSource
  def country_codes; end
  def data_timezone_identifiers; end
  def inspect; end
  def linked_timezone_identifiers; end
  def load_country_info(code); end
  def load_timezone_info(identifier); end
  def timezone_identifiers; end
  def to_s; end

  private

  def raise_invalid_data_source(method_name); end

  class << self
    def create_default_data_source; end
    def get; end
    def set(data_source_or_type, *args); end
  end
end

class TZInfo::DataSourceNotFound < ::StandardError
end

class TZInfo::DataTimezone < ::TZInfo::InfoTimezone
  def canonical_zone; end
  def period_for_utc(utc); end
  def periods_for_local(local); end
  def transitions_up_to(utc_to, utc_from = T.unsafe(nil)); end
end

class TZInfo::DataTimezoneInfo < ::TZInfo::TimezoneInfo
  def create_timezone; end
  def period_for_utc(utc); end
  def periods_for_local(local); end
  def transitions_up_to(utc_to, utc_from = T.unsafe(nil)); end

  private

  def raise_not_implemented(method_name); end
end

class TZInfo::InfoTimezone < ::TZInfo::Timezone
  def identifier; end

  protected

  def info; end
  def setup(info); end

  class << self
    def new(info); end
  end
end

class TZInfo::InvalidCountryCode < ::StandardError
end

class TZInfo::InvalidDataSource < ::StandardError
end

class TZInfo::InvalidTimezoneIdentifier < ::StandardError
end

class TZInfo::InvalidZoneinfoDirectory < ::StandardError
end

class TZInfo::InvalidZoneinfoFile < ::StandardError
end

class TZInfo::LinkedTimezone < ::TZInfo::InfoTimezone
  def canonical_zone; end
  def period_for_utc(utc); end
  def periods_for_local(local); end
  def transitions_up_to(utc_to, utc_from = T.unsafe(nil)); end

  protected

  def setup(info); end
end

class TZInfo::LinkedTimezoneInfo < ::TZInfo::TimezoneInfo
  def initialize(identifier, link_to_identifier); end

  def create_timezone; end
  def inspect; end
  def link_to_identifier; end
end

class TZInfo::NoOffsetsDefined < ::StandardError
end

module TZInfo::OffsetRationals

  private

  def rational_for_offset(offset); end

  class << self
    def rational_for_offset(offset); end
  end
end

class TZInfo::PeriodNotFound < ::StandardError
end

module TZInfo::RubyCoreSupport
  class << self
    def datetime_new(y = T.unsafe(nil), m = T.unsafe(nil), d = T.unsafe(nil), h = T.unsafe(nil), min = T.unsafe(nil), s = T.unsafe(nil), of = T.unsafe(nil), sg = T.unsafe(nil)); end
    def datetime_new!(ajd = T.unsafe(nil), of = T.unsafe(nil), sg = T.unsafe(nil)); end
    def force_encoding(str, encoding); end
    def open_file(file_name, mode, opts, &block); end
    def rational_new!(numerator, denominator = T.unsafe(nil)); end
    def time_nsec(time); end
    def time_supports_64bit; end
    def time_supports_negative; end
  end
end

TZInfo::RubyCoreSupport::HALF_DAYS_IN_DAY = T.let(T.unsafe(nil), Rational)

module TZInfo::RubyCoreSupport::UntaintExt
end

class TZInfo::RubyCountryInfo < ::TZInfo::CountryInfo
  def initialize(code, name, &block); end

  def zone_identifiers; end
  def zones; end
end

class TZInfo::RubyCountryInfo::Zones
  def initialize; end

  def list; end
  def timezone(identifier, latitude_numerator, latitude_denominator, longitude_numerator, longitude_denominator, description = T.unsafe(nil)); end
end

class TZInfo::RubyDataSource < ::TZInfo::DataSource
  def initialize; end

  def country_codes; end
  def data_timezone_identifiers; end
  def linked_timezone_identifiers; end
  def load_country_info(code); end
  def load_timezone_info(identifier); end
  def timezone_identifiers; end
  def to_s; end

  private

  def load_country_index; end
  def load_timezone_index; end
  def require_data(*file); end
  def require_definition(identifier); end
  def require_index(name); end
end

class TZInfo::TimeOrDateTime
  include(::Comparable)

  def initialize(timeOrDateTime); end

  def +(seconds); end
  def -(seconds); end
  def <=>(timeOrDateTime); end
  def add_with_convert(seconds); end
  def day; end
  def eql?(todt); end
  def hash; end
  def hour; end
  def inspect; end
  def mday; end
  def min; end
  def mon; end
  def month; end
  def sec; end
  def to_datetime; end
  def to_i; end
  def to_orig; end
  def to_s; end
  def to_time; end
  def usec; end
  def year; end

  class << self
    def wrap(timeOrDateTime); end
  end
end

class TZInfo::Timezone
  include(::Comparable)

  def <=>(tz); end
  def _dump(limit); end
  def canonical_identifier; end
  def canonical_zone; end
  def current_period; end
  def current_period_and_time; end
  def current_time_and_period; end
  def eql?(tz); end
  def friendly_identifier(skip_first_part = T.unsafe(nil)); end
  def hash; end
  def ical_timezone(date, dst = T.unsafe(nil)); end
  def identifier; end
  def inspect; end
  def local_to_utc(local, dst = T.unsafe(nil)); end
  def name; end
  def now; end
  def offsets_up_to(utc_to, utc_from = T.unsafe(nil)); end
  def period_for_local(local, dst = T.unsafe(nil)); end
  def period_for_utc(utc); end
  def periods_for_local(local); end
  def strftime(format, utc = T.unsafe(nil)); end
  def to_s; end
  def transitions_up_to(utc_to, utc_from = T.unsafe(nil)); end
  def utc_to_local(utc); end

  private

  def raise_unknown_timezone; end

  class << self
    def _load(data); end
    def all; end
    def all_country_zone_identifiers; end
    def all_country_zones; end
    def all_data_zone_identifiers; end
    def all_data_zones; end
    def all_identifiers; end
    def all_linked_zone_identifiers; end
    def all_linked_zones; end
    def data_source; end
    def default_dst; end
    def default_dst=(value); end
    def get(identifier); end
    def get_proxies(identifiers); end
    def get_proxy(identifier); end
    def init_loaded_zones; end
    def new(identifier = T.unsafe(nil)); end
    def us_zone_identifiers; end
    def us_zones; end
  end
end

module TZInfo::TimezoneDefinition
  mixes_in_class_methods(::TZInfo::TimezoneDefinition::ClassMethods)

  class << self
    def append_features(base); end
  end
end

module TZInfo::TimezoneDefinition::ClassMethods
  def get; end
  def linked_timezone(identifier, link_to_identifier); end
  def timezone(identifier); end
end

module TZInfo::TimezoneIndexDefinition
  mixes_in_class_methods(::TZInfo::TimezoneIndexDefinition::ClassMethods)

  class << self
    def append_features(base); end
  end
end

module TZInfo::TimezoneIndexDefinition::ClassMethods
  def data_timezones; end
  def linked_timezone(identifier); end
  def linked_timezones; end
  def timezone(identifier); end
  def timezones; end
end

class TZInfo::TimezoneInfo
  def initialize(identifier); end

  def create_timezone; end
  def identifier; end
  def inspect; end

  private

  def raise_not_implemented(method_name); end
end

class TZInfo::TimezoneOffset
  def initialize(utc_offset, std_offset, abbreviation); end

  def ==(toi); end
  def abbreviation; end
  def dst?; end
  def eql?(toi); end
  def hash; end
  def inspect; end
  def std_offset; end
  def to_local(utc); end
  def to_utc(local); end
  def utc_offset; end
  def utc_total_offset; end
end

class TZInfo::TimezonePeriod
  def initialize(start_transition, end_transition, offset = T.unsafe(nil)); end

  def ==(p); end
  def abbreviation; end
  def daylight; end
  def dst?; end
  def end_transition; end
  def eql?(p); end
  def hash; end
  def inspect; end
  def local_after_start?(local); end
  def local_before_end?(local); end
  def local_end; end
  def local_end_time; end
  def local_start; end
  def local_start_time; end
  def offset; end
  def single; end
  def standard; end
  def start_transition; end
  def std_offset; end
  def to_local(utc); end
  def to_utc(local); end
  def utc_after_start?(utc); end
  def utc_before_end?(utc); end
  def utc_end; end
  def utc_end_time; end
  def utc_offset; end
  def utc_start; end
  def utc_start_time; end
  def utc_total_offset; end
  def utc_total_offset_rational; end
  def valid_for_local?(local); end
  def valid_for_utc?(utc); end
  def zone_identifier; end

  private

  def build_timezone(timezone, transition); end
end

class TZInfo::TimezoneProxy < ::TZInfo::Timezone
  def _dump(limit); end
  def canonical_zone; end
  def identifier; end
  def period_for_utc(utc); end
  def periods_for_local(local); end
  def transitions_up_to(to, from = T.unsafe(nil)); end

  private

  def real_timezone; end
  def setup(identifier); end

  class << self
    def _load(data); end
    def new(identifier); end
  end
end

class TZInfo::TimezoneTransition
  def initialize(offset, previous_offset); end

  def ==(tti); end
  def at; end
  def datetime; end
  def eql?(tti); end
  def hash; end
  def inspect; end
  def local_end; end
  def local_end_at; end
  def local_end_time; end
  def local_start; end
  def local_start_at; end
  def local_start_time; end
  def offset; end
  def previous_offset; end
  def time; end

  private

  def raise_not_implemented(method_name); end
end

class TZInfo::TimezoneTransitionDefinition < ::TZInfo::TimezoneTransition
  def initialize(offset, previous_offset, numerator_or_timestamp, denominator_or_numerator = T.unsafe(nil), denominator = T.unsafe(nil)); end

  def at; end
  def eql?(tti); end
  def hash; end

  protected

  def denominator; end
  def numerator_or_time; end
end

class TZInfo::TransitionDataTimezoneInfo < ::TZInfo::DataTimezoneInfo
  def initialize(identifier); end

  def offset(id, utc_offset, std_offset, abbreviation); end
  def period_for_utc(utc); end
  def periods_for_local(local); end
  def transition(year, month, offset_id, numerator_or_timestamp, denominator_or_numerator = T.unsafe(nil), denominator = T.unsafe(nil)); end
  def transitions_up_to(utc_to, utc_from = T.unsafe(nil)); end

  private

  def transition_after_start(index); end
  def transition_before_end(index); end
  def transition_index(year, month); end
end

class TZInfo::UnknownTimezone < ::StandardError
end

class TZInfo::ZoneinfoCountryInfo < ::TZInfo::CountryInfo
  def initialize(code, name, zones); end

  def zone_identifiers; end
  def zones; end
end

class TZInfo::ZoneinfoDataSource < ::TZInfo::DataSource
  def initialize(zoneinfo_dir = T.unsafe(nil), alternate_iso3166_tab_path = T.unsafe(nil)); end

  def country_codes; end
  def data_timezone_identifiers; end
  def inspect; end
  def linked_timezone_identifiers; end
  def load_country_info(code); end
  def load_timezone_info(identifier); end
  def timezone_identifiers; end
  def to_s; end
  def zoneinfo_dir; end

  private

  def dms_to_rational(sign, degrees, minutes, seconds = T.unsafe(nil)); end
  def enum_timezones(dir, exclude = T.unsafe(nil), &block); end
  def find_zoneinfo_dir; end
  def load_country_index(iso3166_tab_path, zone_tab_path); end
  def load_timezone_index; end
  def resolve_tab_path(zoneinfo_path, standard_names, tab_name); end
  def validate_zoneinfo_dir(path, iso3166_tab_path = T.unsafe(nil)); end

  class << self
    def alternate_iso3166_tab_search_path; end
    def alternate_iso3166_tab_search_path=(alternate_iso3166_tab_search_path); end
    def process_search_path(path, default); end
    def search_path; end
    def search_path=(search_path); end
  end
end

TZInfo::ZoneinfoDataSource::DEFAULT_ALTERNATE_ISO3166_TAB_SEARCH_PATH = T.let(T.unsafe(nil), T::Array[T.untyped])

TZInfo::ZoneinfoDataSource::DEFAULT_SEARCH_PATH = T.let(T.unsafe(nil), T::Array[T.untyped])

class TZInfo::ZoneinfoDirectoryNotFound < ::StandardError
end

class TZInfo::ZoneinfoTimezoneInfo < ::TZInfo::TransitionDataTimezoneInfo
  def initialize(identifier, file_path); end


  private

  def check_read(file, bytes); end
  def define_offset(index, offset); end
  def derive_offsets(transitions, offsets); end
  def make_signed_int32(long); end
  def make_signed_int64(high, low); end
  def parse(file); end
end

TZInfo::ZoneinfoTimezoneInfo::MAX_TIMESTAMP = T.let(T.unsafe(nil), Integer)

TZInfo::ZoneinfoTimezoneInfo::MIN_TIMESTAMP = T.let(T.unsafe(nil), Integer)
