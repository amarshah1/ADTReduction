
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
(assert (and (is-Nil l3) (= l0 Nil) (= l0 l0) (= l3 l2)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (not (= l3 l3)) )
(assert (or (is-Nil l0) (is-Cons Nil) (= l1 l3)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (not (is-Nil l2)) )
(assert (= l3 Nil) )
(check-sat)
