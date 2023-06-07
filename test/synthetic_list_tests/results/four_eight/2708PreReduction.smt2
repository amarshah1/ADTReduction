
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
(assert (is-Nil l1) )
(assert (not (is-Nil l1)) )
(assert (is-Cons l2) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l0 l1) (= l1 l1)) )
(assert (and (is-Cons Nil) (= l0 l3) (= l2 l3) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (= l3 l0) )
(check-sat)
