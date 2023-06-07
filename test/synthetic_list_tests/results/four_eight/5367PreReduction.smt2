
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
(assert (= l2 l1) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (not (is-Nil l2)) )
(assert (= l1 l1) )
(assert (or (is-Cons Nil) (is-Cons l2) (= l3 Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (= l3 Nil)) )
(check-sat)
