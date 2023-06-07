
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (= l2 Nil) (= l0 Nil) (is-Nil l0)) )
(assert (= l0 Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l1 l2)) )
(assert (is-Cons l0) )
(assert (is-Cons l3) )
(assert (or (= l2 Nil) (= l3 l3) (= l1 Nil)) )
(check-sat)
