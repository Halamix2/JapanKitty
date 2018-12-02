<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
/**
 * Courses list model
 * @since 2.0
 * @version 2.0
 */
class Course extends Model
{
    //table courses

    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;

    /**
     * Allow everything to be batch fillable
     *
     * @var array
     */
    protected $guarded = [];

    //scopes
    /**
     * Type scope
     *
     * @unknown usage: App\Course::type('kanji')->get();
     * @example a App\Course::type('kanji')->get();
     *
     * @param \Illuminate\Database\Eloquent\Builder $query Input query
     * @param string $type Course type
     * @return \Illuminate\Database\Eloquent\Builder $query Output query
     */
    public function type($query, $type) {
        return $query->where('type', $type);
    }
}
