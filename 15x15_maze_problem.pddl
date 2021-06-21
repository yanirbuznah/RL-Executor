(define (problem simple_maze)
(:domain maze_food)
(:objects
	person0
	food1
	start tile
	goal_tile0
	t0A
	t1A
	t2A
	t3A
	t4A
	t5A
	t6A
	t7A
	t8A
	t9A
	t10A
	t11A
	t12A
	t13A
	t14A
	t0B
	t1B
	t2B
	t3B
	t4B
	t5B
	t6B
	t7B
	t8B
	t9B
	t10B
	t11B
	t12B
	t13B
	t14B
	t0C
	t1C
	t2C
	t3C
	t4C
	t5C
	t6C
	t7C
	t8C
	t9C
	t10C
	t11C
	t12C
	t13C
	t14C
	t0D
	t1D
	t2D
	t3D
	t4D
	t5D
	t6D
	t7D
	t8D
	t9D
	t10D
	t11D
	t12D
	t13D
	t14D
	t0E
	t1E
	t2E
	t3E
	t4E
	t5E
	t6E
	t7E
	t8E
	t9E
	t10E
	t11E
	t12E
	t13E
	t14E
	t0F
	t1F
	t2F
	t3F
	t4F
	t5F
	t6F
	t7F
	t8F
	t9F
	t10F
	t11F
	t12F
	t13F
	t14F
	t0G
	t1G
	t2G
	t3G
	t4G
	t5G
	t6G
	t7G
	t8G
	t9G
	t10G
	t11G
	t12G
	t13G
	t14G
	t0H
	t1H
	t2H
	t3H
	t4H
	t5H
	t6H
	t7H
	t8H
	t9H
	t10H
	t11H
	t12H
	t13H
	t14H
	t0I
	t1I
	t2I
	t3I
	t4I
	t5I
	t6I
	t7I
	t8I
	t9I
	t10I
	t11I
	t12I
	t13I
	t14I
	t0J
	t1J
	t2J
	t3J
	t4J
	t5J
	t6J
	t7J
	t8J
	t9J
	t10J
	t11J
	t12J
	t13J
	t14J
	t0K
	t1K
	t2K
	t3K
	t4K
	t5K
	t6K
	t7K
	t8K
	t9K
	t10K
	t11K
	t12K
	t13K
	t14K
	t0L
	t1L
	t2L
	t3L
	t4L
	t5L
	t6L
	t7L
	t8L
	t9L
	t10L
	t11L
	t12L
	t13L
	t14L
	t0M
	t1M
	t2M
	t3M
	t4M
	t5M
	t6M
	t7M
	t8M
	t9M
	t10M
	t11M
	t12M
	t13M
	t14M
	t0N
	t1N
	t2N
	t3N
	t4N
	t5N
	t6N
	t7N
	t8N
	t9N
	t10N
	t11N
	t12N
	t13N
	t14N
	t0O
	t1O
	t2O
	t3O
	t4O
	t5O
	t6O
	t7O
	t8O
	t9O
	t10O
	t11O
	t12O
	t13O
	t14O
)
(:init
	(empty t0A)
	(east t0A t1A)
	(empty t1A)
	(south t1A t1B)
	(west t1A t0A)
	(empty t2A)
	(south t2A t2B)
	(east t2A t3A)
	(empty t3A)
	(east t3A t4A)
	(west t3A t2A)
	(empty t4A)
	(south t4A t4B)
	(west t4A t3A)
	(empty t5A)
	(east t5A t6A)
	(empty t6A)
	(east t6A t7A)
	(west t6A t5A)
	(empty t7A)
	(south t7A t7B)
	(east t7A t8A)
	(west t7A t6A)
	(empty t8A)
	(east t8A t9A)
	(west t8A t7A)
	(empty t9A)
	(west t9A t8A)
	(empty t10A)
	(south t10A t10B)
	(east t10A t11A)
	(empty t11A)
	(south t11A t11B)
	(east t11A t12A)
	(west t11A t10A)
	(empty t12A)
	(east t12A t13A)
	(west t12A t11A)
	(empty t13A)
	(east t13A t14A)
	(west t13A t12A)
	(empty t14A)
	(south t14A t14B)
	(west t14A t13A)
	(empty t0B)
	(south t0B t0C)
	(empty t1B)
	(north t1B t1A)
	(east t1B t2B)
	(empty t2B)
	(north t2B t2A)
	(west t2B t1B)
	(empty t3B)
	(south t3B t3C)
	(empty t4B)
	(north t4B t4A)
	(east t4B t5B)
	(empty t5B)
	(east t5B t6B)
	(west t5B t4B)
	(empty t6B)
	(south t6B t6C)
	(west t6B t5B)
	(empty t7B)
	(south t7B t7C)
	(north t7B t7A)
	(east t7B t8B)
	(empty t8B)
	(east t8B t9B)
	(west t8B t7B)
	(empty t9B)
	(east t9B t10B)
	(west t9B t8B)
	(empty t10B)
	(north t10B t10A)
	(west t10B t9B)
	(empty t11B)
	(south t11B t11C)
	(north t11B t11A)
	(empty t12B)
	(south t12B t12C)
	(east t12B t13B)
	(empty t13B)
	(south t13B t13C)
	(west t13B t12B)
	(empty t14B)
	(south t14B t14C)
	(north t14B t14A)
	(empty t0C)
	(south t0C t0D)
	(north t0C t0B)
	(empty t1C)
	(south t1C t1D)
	(east t1C t2C)
	(empty t2C)
	(east t2C t3C)
	(west t2C t1C)
	(empty t3C)
	(north t3C t3B)
	(east t3C t4C)
	(west t3C t2C)
	(empty t4C)
	(south t4C t4D)
	(west t4C t3C)
	(empty t5C)
	(south t5C t5D)
	(east t5C t6C)
	(empty t6C)
	(north t6C t6B)
	(west t6C t5C)
	(empty t7C)
	(north t7C t7B)
	(east t7C t8C)
	(empty t8C)
	(south t8C t8D)
	(west t8C t7C)
	(empty t9C)
	(south t9C t9D)
	(east t9C t10C)
	(empty t10C)
	(east t10C t11C)
	(west t10C t9C)
	(empty t11C)
	(north t11C t11B)
	(west t11C t10C)
	(empty t12C)
	(south t12C t12D)
	(north t12C t12B)
	(empty t13C)
	(north t13C t13B)
	(empty t14C)
	(south t14C t14D)
	(north t14C t14B)
	(empty t0D)
	(south t0D t0E)
	(north t0D t0C)
	(empty t1D)
	(south t1D t1E)
	(north t1D t1C)
	(empty t2D)
	(south t2D t2E)
	(east t2D t3D)
	(empty t3D)
	(south t3D t3E)
	(west t3D t2D)
	(empty t4D)
	(south t4D t4E)
	(north t4D t4C)
	(empty t5D)
	(south t5D t5E)
	(north t5D t5C)
	(empty t6D)
	(east t6D t7D)
	(empty t7D)
	(east t7D t8D)
	(west t7D t6D)
	(empty t8D)
	(south t8D t8E)
	(north t8D t8C)
	(west t8D t7D)
	(empty t9D)
	(south t9D t9E)
	(north t9D t9C)
	(empty t10D)
	(east t10D t11D)
	(empty t11D)
	(south t11D t11E)
	(west t11D t10D)
	(empty t12D)
	(south t12D t12E)
	(north t12D t12C)
	(east t12D t13D)
	(empty t13D)
	(east t13D t14D)
	(west t13D t12D)
	(empty t14D)
	(north t14D t14C)
	(west t14D t13D)
	(empty t0E)
	(south t0E t0F)
	(north t0E t0D)
	(empty t1E)
	(south t1E t1F)
	(north t1E t1D)
	(empty t2E)
	(south t2E t2F)
	(north t2E t2D)
	(empty t3E)
	(south t3E t3F)
	(north t3E t3D)
	(empty t4E)
	(south t4E t4F)
	(north t4E t4D)
	(empty t5E)
	(north t5E t5D)
	(east t5E t6E)
	(empty t6E)
	(east t6E t7E)
	(west t6E t5E)
	(empty t7E)
	(south t7E t7F)
	(west t7E t6E)
	(empty t8E)
	(north t8E t8D)
	(empty t9E)
	(north t9E t9D)
	(east t9E t10E)
	(empty t10E)
	(south t10E t10F)
	(west t10E t9E)
	(empty t11E)
	(south t11E t11F)
	(north t11E t11D)
	(empty t12E)
	(south t12E t12F)
	(north t12E t12D)
	(empty t13E)
	(south t13E t13F)
	(east t13E t14E)
	(empty t14E)
	(west t14E t13E)
	(empty t0F)
	(north t0F t0E)
	(east t0F t1F)
	(empty t1F)
	(north t1F t1E)
	(west t1F t0F)
	(empty t2F)
	(south t2F t2G)
	(north t2F t2E)
	(empty t3F)
	(north t3F t3E)
	(east t3F t4F)
	(empty t4F)
	(north t4F t4E)
	(east t4F t5F)
	(west t4F t3F)
	(empty t5F)
	(east t5F t6F)
	(west t5F t4F)
	(empty t6F)
	(west t6F t5F)
	(empty t7F)
	(north t7F t7E)
	(east t7F t8F)
	(empty t8F)
	(east t8F t9F)
	(west t8F t7F)
	(empty t9F)
	(south t9F t9G)
	(west t9F t8F)
	(empty t10F)
	(south t10F t10G)
	(north t10F t10E)
	(empty t11F)
	(south t11F t11G)
	(north t11F t11E)
	(east t11F t12F)
	(empty t12F)
	(north t12F t12E)
	(west t12F t11F)
	(empty t13F)
	(north t13F t13E)
	(east t13F t14F)
	(empty t14F)
	(south t14F t14G)
	(west t14F t13F)
	(empty t0G)
	(south t0G t0H)
	(east t0G t1G)
	(empty t1G)
	(south t1G t1H)
	(west t1G t0G)
	(empty t2G)
	(south t2G t2H)
	(north t2G t2F)
	(east t2G t3G)
	(empty t3G)
	(south t3G t3H)
	(west t3G t2G)
	(empty t4G)
	(south t4G t4H)
	(east t4G t5G)
	(empty t5G)
	(south t5G t5H)
	(west t5G t4G)
	(empty t6G)
	(south t6G t6H)
	(east t6G t7G)
	(empty t7G)
	(south t7G t7H)
	(east t7G t8G)
	(west t7G t6G)
	(empty t8G)
	(west t8G t7G)
	(empty t9G)
	(north t9G t9F)
	(east t9G t10G)
	(empty t10G)
	(north t10G t10F)
	(west t10G t9G)
	(empty t11G)
	(south t11G t11H)
	(north t11G t11F)
	(empty t12G)
	(south t12G t12H)
	(east t12G t13G)
	(empty t13G)
	(east t13G t14G)
	(west t13G t12G)
	(empty t14G)
	(north t14G t14F)
	(west t14G t13G)
	(empty t0H)
	(south t0H t0I)
	(north t0H t0G)
	(empty t1H)
	(south t1H t1I)
	(north t1H t1G)
	(empty t2H)
	(south t2H t2I)
	(north t2H t2G)
	(empty t3H)
	(north t3H t3G)
	(east t3H t4H)
	(empty t4H)
	(north t4H t4G)
	(west t4H t3H)
	(empty t5H)
	(north t5H t5G)
	(east t5H t6H)
	(empty t6H)
	(north t6H t6G)
	(west t6H t5H)
	(empty t7H)
	(north t7H t7G)
	(east t7H t8H)
	(empty t8H)
	(south t8H t8I)
	(east t8H t9H)
	(west t8H t7H)
	(empty t9H)
	(east t9H t10H)
	(west t9H t8H)
	(empty t10H)
	(west t10H t9H)
	(empty t11H)
	(south t11H t11I)
	(north t11H t11G)
	(empty t12H)
	(south t12H t12I)
	(north t12H t12G)
	(east t12H t13H)
	(empty t13H)
	(east t13H t14H)
	(west t13H t12H)
	(empty t14H)
	(south t14H t14I)
	(west t14H t13H)
	(empty t0I)
	(south t0I t0J)
	(north t0I t0H)
	(empty t1I)
	(south t1I t1J)
	(north t1I t1H)
	(empty t2I)
	(south t2I t2J)
	(north t2I t2H)
	(empty t3I)
	(south t3I t3J)
	(east t3I t4I)
	(empty t4I)
	(east t4I t5I)
	(west t4I t3I)
	(empty t5I)
	(south t5I t5J)
	(west t5I t4I)
	(empty t6I)
	(south t6I t6J)
	(east t6I t7I)
	(empty t7I)
	(south t7I t7J)
	(west t7I t6I)
	(empty t8I)
	(south t8I t8J)
	(north t8I t8H)
	(empty t9I)
	(south t9I t9J)
	(east t9I t10I)
	(empty t10I)
	(east t10I t11I)
	(west t10I t9I)
	(empty t11I)
	(north t11I t11H)
	(west t11I t10I)
	(empty t12I)
	(north t12I t12H)
	(east t12I t13I)
	(empty t13I)
	(west t13I t12I)
	(empty t14I)
	(south t14I t14J)
	(north t14I t14H)
	(empty t0J)
	(south t0J t0K)
	(north t0J t0I)
	(empty t1J)
	(south t1J t1K)
	(north t1J t1I)
	(empty t2J)
	(north t2J t2I)
	(east t2J t3J)
	(empty t3J)
	(north t3J t3I)
	(west t3J t2J)
	(empty t4J)
	(south t4J t4K)
	(east t4J t5J)
	(empty t5J)
	(north t5J t5I)
	(west t5J t4J)
	(empty t6J)
	(south t6J t6K)
	(north t6J t6I)
	(empty t7J)
	(south t7J t7K)
	(north t7J t7I)
	(empty t8J)
	(south t8J t8K)
	(north t8J t8I)
	(empty t9J)
	(north t9J t9I)
	(east t9J t10J)
	(empty t10J)
	(east t10J t11J)
	(west t10J t9J)
	(empty t11J)
	(east t11J t12J)
	(west t11J t10J)
	(empty t12J)
	(east t12J t13J)
	(west t12J t11J)
	(empty t13J)
	(south t13J t13K)
	(west t13J t12J)
	(empty t14J)
	(south t14J t14K)
	(north t14J t14I)
	(empty t0K)
	(south t0K t0L)
	(north t0K t0J)
	(empty t1K)
	(north t1K t1J)
	(east t1K t2K)
	(empty t2K)
	(east t2K t3K)
	(west t2K t1K)
	(empty t3K)
	(south t3K t3L)
	(west t3K t2K)
	(empty t4K)
	(north t4K t4J)
	(empty t5K)
	(south t5K t5L)
	(east t5K t6K)
	(empty t6K)
	(north t6K t6J)
	(west t6K t5K)
	(empty t7K)
	(south t7K t7L)
	(north t7K t7J)
	(empty t8K)
	(north t8K t8J)
	(east t8K t9K)
	(empty t9K)
	(south t9K t9L)
	(west t9K t8K)
	(empty t10K)
	(south t10K t10L)
	(east t10K t11K)
	(empty t11K)
	(east t11K t12K)
	(west t11K t10K)
	(empty t12K)
	(east t12K t13K)
	(west t12K t11K)
	(empty t13K)
	(north t13K t13J)
	(west t13K t12K)
	(empty t14K)
	(south t14K t14L)
	(north t14K t14J)
	(empty t0L)
	(south t0L t0M)
	(north t0L t0K)
	(empty t1L)
	(east t1L t2L)
	(empty t2L)
	(south t2L t2M)
	(east t2L t3L)
	(west t2L t1L)
	(empty t3L)
	(north t3L t3K)
	(west t3L t2L)
	(empty t4L)
	(south t4L t4M)
	(east t4L t5L)
	(empty t5L)
	(north t5L t5K)
	(west t5L t4L)
	(empty t6L)
	(east t6L t7L)
	(empty t7L)
	(north t7L t7K)
	(east t7L t8L)
	(west t7L t6L)
	(empty t8L)
	(east t8L t9L)
	(west t8L t7L)
	(empty t9L)
	(north t9L t9K)
	(west t9L t8L)
	(empty t10L)
	(south t10L t10M)
	(north t10L t10K)
	(empty t11L)
	(south t11L t11M)
	(east t11L t12L)
	(empty t12L)
	(south t12L t12M)
	(east t12L t13L)
	(west t12L t11L)
	(empty t13L)
	(east t13L t14L)
	(west t13L t12L)
	(empty t14L)
	(south t14L t14M)
	(north t14L t14K)
	(west t14L t13L)
	(empty t0M)
	(north t0M t0L)
	(east t0M t1M)
	(empty t1M)
	(south t1M t1N)
	(west t1M t0M)
	(empty t2M)
	(north t2M t2L)
	(east t2M t3M)
	(empty t3M)
	(east t3M t4M)
	(west t3M t2M)
	(empty t4M)
	(north t4M t4L)
	(west t4M t3M)
	(empty t5M)
	(south t5M t5N)
	(east t5M t6M)
	(empty t6M)
	(east t6M t7M)
	(west t6M t5M)
	(empty t7M)
	(east t7M t8M)
	(west t7M t6M)
	(empty t8M)
	(east t8M t9M)
	(west t8M t7M)
	(empty t9M)
	(south t9M t9N)
	(west t9M t8M)
	(empty t10M)
	(south t10M t10N)
	(north t10M t10L)
	(empty t11M)
	(north t11M t11L)
	(empty t12M)
	(north t12M t12L)
	(east t12M t13M)
	(empty t13M)
	(south t13M t13N)
	(west t13M t12M)
	(empty t14M)
	(south t14M t14N)
	(north t14M t14L)
	(empty t0N)
	(south t0N t0O)
	(east t0N t1N)
	(empty t1N)
	(north t1N t1M)
	(west t1N t0N)
	(empty t2N)
	(south t2N t2O)
	(east t2N t3N)
	(empty t3N)
	(east t3N t4N)
	(west t3N t2N)
	(empty t4N)
	(south t4N t4O)
	(west t4N t3N)
	(empty t5N)
	(south t5N t5O)
	(north t5N t5M)
	(empty t6N)
	(south t6N t6O)
	(east t6N t7N)
	(empty t7N)
	(south t7N t7O)
	(west t7N t6N)
	(empty t8N)
	(south t8N t8O)
	(empty t9N)
	(north t9N t9M)
	(east t9N t10N)
	(empty t10N)
	(north t10N t10M)
	(west t10N t9N)
	(empty t11N)
	(south t11N t11O)
	(east t11N t12N)
	(empty t12N)
	(east t12N t13N)
	(west t12N t11N)
	(empty t13N)
	(north t13N t13M)
	(west t13N t12N)
	(empty t14N)
	(south t14N t14O)
	(north t14N t14M)
	(empty t0O)
	(north t0O t0N)
	(east t0O t1O)
	(empty t1O)
	(east t1O t2O)
	(west t1O t0O)
	(empty t2O)
	(north t2O t2N)
	(east t2O t3O)
	(west t2O t1O)
	(empty t3O)
	(west t3O t2O)
	(empty t4O)
	(north t4O t4N)
	(east t4O t5O)
	(empty t5O)
	(north t5O t5N)
	(east t5O t6O)
	(west t5O t4O)
	(empty t6O)
	(north t6O t6N)
	(west t6O t5O)
	(empty t7O)
	(north t7O t7N)
	(east t7O t8O)
	(empty t8O)
	(north t8O t8N)
	(east t8O t9O)
	(west t8O t7O)
	(empty t9O)
	(east t9O t10O)
	(west t9O t8O)
	(empty t10O)
	(east t10O t11O)
	(west t10O t9O)
	(empty t11O)
	(north t11O t11N)
	(west t11O t10O)
	(empty t12O)
	(east t12O t13O)
	(empty t13O)
	(east t13O t14O)
	(west t13O t12O)
	(empty t14O)
	(north t14O t14N)
	(west t14O t13O)
	(person person0)
	(at person0 t1H)
	(north t10H goal_tile0)
	(food food1)
	(empty goal_tile0)
)
(:reveal ((at person0 goal_tile0) (at food1 goal_tile0) 1))
(:goal 
	(and (has person0 food1))
	)
)
