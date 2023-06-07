
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
(assert (or (is-Cons Nil) (is-Nil l2) (= l1 l0)) )
(assert (= l2 Nil) )
(assert (not (= l3 l1)) )
(assert (is-Cons l3) )
(assert (and (= l1 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (not (= l0 l0)) )
(check-sat)
