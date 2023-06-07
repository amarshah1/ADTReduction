
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
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons l1) )
(assert (not (is-Cons l0)) )
(assert (is-Cons l2) )
(assert (= l0 l2) )
(assert (not (= l3 l1)) )
(check-sat)
